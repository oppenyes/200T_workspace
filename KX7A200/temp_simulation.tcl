
            open_project {d:\Desktop\200T_workspace\KX7A200\KX7A100.xpr}
            update_compile_order -fileset sources_1
            set_property target_simulator ModelSim [current_project]
            set_property compxlib.modelsim_compiled_library_dir  D:/Xilinx/compile_simlib/ [current_project]
            
 launch_simulation -install_path D:/Program/modeltech64_2020.4/win64