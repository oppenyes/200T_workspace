# KX7A200 Vivado 工程 Verilog 功能说明

## 1. 工程概况

本工程目录名为 `KX7A200`，Vivado 工程文件和源码目录实际使用 `KX7A100` 命名。工程的主要自定义 RTL 位于：

`KX7A200/KX7A100.srcs/sources_1/new/`

从顶层连接关系看，工程面向一块带有 UART、以太网、DDR3、IIC EEPROM、按键、数码管和 LED 外设的 FPGA 板卡。顶层模块为 `KX7A100_Top`。

## 2. 顶层模块

### `KX7A100_Top.v` — 系统顶层

负责完成整个板级系统的例化和信号连接，主要连接：

- 系统时钟及多路派生时钟、复位；
- UART 收发接口；
- EEPROM IIC 接口；
- 两路 RGMII 以太网 PHY 接口；
- DDR3 存储器接口；
- 按键输入、LED 输出和数码管输出；
- FPGA DNA 读取与 VIO 调试接口；
- 用户命令在 UART、UDP、DDR3 和各外设模块之间的分发。

典型数据路径为：UART/UDP 接收命令 → `cmd_cov_module` 统一汇聚 → 根据命令分发到显示、LED、EEPROM、DDR3 或测试数据模块；外设或 DDR3 返回的数据再通过命令通道发送回 UART/UDP。

## 3. 时钟与复位模块（`mclk_rtl`）

| 文件 | 模块 | 功能 |
|---|---|---|
| `mclk_rst_module.v` | `mclk_rst_module` | 例化 `clk_wiz_mclk`，生成系统各工作时钟及对应复位；对锁定信号和外部复位进行同步处理。 |
| `reset_module.v` | `reset_module` | 产生同步/延迟复位，避免时钟刚启动时逻辑误动作。 |
| `edge_module.v` | `edge_module` | 对输入信号进行边沿检测，输出单周期脉冲。 |
| `clk_div_module.v` | `clk_div_module` | 对输入时钟分频，产生较低频率的逻辑时钟或使能信号。 |

工程中存在多个时钟域，例如系统时钟、UART 时钟、IIC 时钟、以太网时钟、DDR3 用户时钟和 WS2812B/LED 时钟；跨域数据主要通过 FIFO 或专用跨时钟逻辑处理。

## 4. UART 模块（`uart_rtl`）

| 文件 | 模块 | 功能 |
|---|---|---|
| `uart_module.v` | `uart_module` | UART 顶层封装，提供大数据帧发送、接收和完成/就绪握手。发送数据宽度为 4096 bit，接收数据宽度为 512 bit。 |
| `uart_tx.v` | `uart_tx` | 将一帧并行数据拆分为 UART 字节流发送，并产生 ready/done 状态。 |
| `uart_rx.v` | `uart_rx` | UART 接收状态机，按波特率采样输入串行数据，组装为 512 bit 数据帧并输出帧长度。 |
| `tx.v` | `tx` | 基础 8 bit UART 发送器，包含起始位、数据位和停止位时序。 |
| `rx.v` | `rx` | 基础 UART 接收器，完成起始位检测、数据采样和字节输出。 |

UART 数据帧通常由命令模块解释；`iw_uart_tx_num`/`ow_uart_rx_num` 用于表示有效字节数或帧长度。

## 5. UDP/以太网模块（`udp_rtl`）

| 文件 | 模块 | 功能 |
|---|---|---|
| `udp_drive.v` | `udp_drive` | 以太网业务层封装，连接 RGMII PHY、UDP 协议栈和用户数据接口，完成 UDP 收发及 PHY 复位。 |
| `master_wrapper.v` | `master_wrapper` | 封装 UDP 栈、三速以太网 MAC、AXI-Stream FIFO、数据宽度转换及复位逻辑。 |
| `udp_64x4096_fifo.v` | `udp_64x4096_fifo` | 64 bit、深度约 4096 的 UDP 数据缓存，处理写入/读取握手、跨时钟和数据包边界。 |
| `tri_mode_ethernet_mac_0_example_design_resets.v` | `tri_mode_ethernet_mac_0_example_design_resets` | Xilinx 以太网示例设计的多时钟域复位生成。 |
| `tri_mode_ethernet_mac_0_sync_block.v` | `tri_mode_ethernet_mac_0_sync_block` | 以多级触发器同步跨时钟信号，降低亚稳态风险。 |
| `tri_mode_ethernet_mac_0_reset_sync.v` | `tri_mode_ethernet_mac_0_reset_sync` | 将异步复位转换为目标时钟域同步复位。 |
| `tri_mode_ethernet_mac_0_axi_lite_sm.v` | `tri_mode_ethernet_mac_0_axi_lite_sm` | 三速以太网 MAC 的 AXI-Lite 配置状态机。 |

UDP 用户侧采用 64 bit 数据总线，并通过 `valid/ready/last/length` 等信号完成数据流握手和包结束指示。

## 6. DDR3 存储模块（`ddr3_app_rtl`）

| 文件 | 模块 | 功能 |
|---|---|---|
| `ddr3_module.v` | `ddr3_module` | DDR3 用户接口控制层，例化 MIG `mig_7series_0`，提供 512 bit 写入/读取接口、地址计数和初始化完成指示。 |
| `ddr3_cache_module.v` | `ddr3_cache_module` | DDR3 前后级缓存，使用异步 FIFO 缓冲写入和读取数据，解决用户时钟域与 DDR3 用户时钟域之间的数据传输。 |

DDR3 初始化完成前不会执行正常读写。读写数据宽度为 512 bit，地址计数和读写使能由应用层控制；FIFO 用于吸收突发流量和跨域延迟。

## 7. 命令汇聚与测试数据

### `cmd_cov_module.v` — 命令汇聚/分发

统一接收 UART 的 512 bit 命令和 Ethernet 的 64 bit 命令，根据来源和握手状态形成系统用户命令，并将返回数据分别送往 UART 或 UDP。该模块是多个时钟域和多个业务模块之间的命令路由中心。

### `test_data_generator_module.v` — 测试数据发生器

接收用户测试命令，在测试时钟域产生 64 bit 连续写数据；同时对读回数据进行有效性检查，并输出读写错误标志。适合用于 DDR3/FIFO/数据链路通路验证。

## 8. IIC EEPROM 模块（`IIC_rtl`）

| 文件 | 模块 | 功能 |
|---|---|---|
| `eeprom_module.v` | `eeprom_module` | EEPROM 业务接口，将用户命令转换为 IIC 读写请求，并返回读取数据或写完成状态。 |
| `iic_module.v` | `iic_module` | IIC 底层主机状态机，产生 START、STOP、ACK、字节地址、数据读写和 SCL/SDA 时序。 |

支持参数 `eeprom_memory` 配置存储器容量。模块包含系统时钟域到 IIC 时钟域的数据传递，并使用 SDA 双向端口实现开漏总线行为。

## 9. 按键模块（`key_rtl`）

| 文件 | 模块 | 功能 |
|---|---|---|
| `key_module.v` | `key_module` | 管理 4 路按键输入，输出按键按下、释放、保持和单次触发等事件。 |
| `key.v` | `key` | 单路按键消抖、边沿检测和单脉冲生成。 |

按键输入先进行约 10 ms 消抖，再输出稳定状态和事件脉冲，避免机械抖动导致重复触发。

## 10. 数码管模块（`smg_rtl`）

### `smg_module.v` — 多位数码管驱动

接收用户命令或专用显示命令，保存需要显示的数据，并在数码管时钟域进行动态扫描。输出包括段选 `ow_SMG_DIG[7:0]` 和位选 `ow_SMG_SEL[7:0]`，用于驱动 8 位数码管。

## 11. LED 与 WS2812B 模块（`led_rtl`）

| 文件 | 模块 | 功能 |
|---|---|---|
| `led_module.v` | `led_module` | LED 命令解析及模式选择，向不同 LED 效果驱动模块分发控制。 |
| `led_run_drive.v` | `led_run_drive` | 运行/流水灯效果。 |
| `led_flicker_drive.v` | `led_flicker_drive` | 多路 LED 闪烁效果。 |
| `led_alternating_flicker_drive.v` | `led_alternating_flicker_drive` | 交替闪烁效果。 |
| `led_pwm_drive.v` | `led_pwm_drive` | 基于 PWM 的亮度控制。 |
| `ws2812b_module.v` | `ws2812b_module` | 按 WS2812B 单线协议输出 GRB 颜色数据和复位时序。 |

`led_module` 负责识别用户命令，底层效果模块按照固定计数器产生时序；WS2812B 模块使用独立时钟，发送期间通过 ready 信号进行流控。

## 12. FPGA DNA/Unix 时间模块（`dna_rtl`）

| 文件 | 模块 | 功能 |
|---|---|---|
| `dna_module.v` | `dna_module` | 读取 FPGA 内置 DNA/Device ID，并通过 VIO 或状态信号报告读取有效性。 |
| `Unix_Epoch_module.v` | `Unix_Epoch_module` | 维护/输出 Unix Epoch 相关数据，并可将时间信息转换为 WS2812B 显示数据。 |

## 13. Vivado 生成文件说明

工程中 `KX7A100.gen`、`KX7A100.cache`、`KX7A100.ip_user_files` 下的 `.v/.sv` 多为 Vivado IP 生成代码、仿真网表、MIG DDR3 控制器、FIFO、VIO、时钟向导和以太网 MAC 支持文件。它们通常不应手工修改；重新生成 IP 或复位工程时可能被覆盖。

重点 IP 包括：

- `mig_7series_0`：DDR3 MIG 控制器；
- `tri_mode_ethernet_mac_0`：三速以太网 MAC；
- `clk_wiz_mclk`：时钟管理；
- `fifo_*`、`axis_data_fifo_*`：同步/异步 FIFO；
- `axis_dwidth_converter_*`：AXI-Stream 数据宽度转换；
- `vio_FMC`、`vio_dna`：Vivado 在线调试接口。

## 14. 设计注意事项

1. 修改顶层端口或时钟关系后，需要同步检查 `.xdc` 约束文件和 IP 配置。
2. UART、UDP、DDR3、IIC 和 LED/WS2812B 使用不同工作时钟，新增逻辑时必须明确时钟域和复位域。
3. 跨域数据应继续使用现有 FIFO、握手或同步器，不能直接把多 bit 总线从一个时钟域接到另一个时钟域。
4. DDR3 只有在 `ow_init_calib_complete` 有效后才能进行可靠读写。
5. UDP 和 UART 数据帧都带有长度/有效信号，发送端必须遵守 `ready/valid` 握手，避免丢包或覆盖 FIFO 数据。
6. 本说明依据当前 `.v` 源码的模块名、端口和状态机连接关系整理；具体命令字含义应结合上位机协议或命令定义继续确认。
