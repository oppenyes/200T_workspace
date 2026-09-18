#!/usr/bin/env python3
"""Compare xfft_0 simulation output against a NumPy FFT reference."""

from pathlib import Path
import argparse
import numpy as np

FFT_POINTS = 4096
FFT_BIN = 32
AMPLITUDE = 10000


def read_fpga_output(path: Path) -> np.ndarray:
    rows = np.loadtxt(path, dtype=np.int64)
    if rows.shape != (FFT_POINTS, 3):
        raise ValueError(f"expected {FFT_POINTS} rows of index/real/imag, got {rows.shape}")
    if not np.array_equal(rows[:, 0], np.arange(FFT_POINTS)):
        raise ValueError("FFT output indices are not contiguous 0..4095")
    return rows[:, 1].astype(np.float64) + 1j * rows[:, 2].astype(np.float64)


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--fft-output", default="fft_output.txt", type=Path)
    args = parser.parse_args()

    n = np.arange(FFT_POINTS)
    # np.rint matches the testbench's $rtoi quantisation for these samples.
    samples = np.rint(AMPLITUDE * np.sin(2 * np.pi * FFT_BIN * n / FFT_POINTS))
    samples = samples.astype(np.int16)
    numpy_fft = np.fft.fft(samples.astype(np.float64))
    fpga_fft = read_fpga_output(args.fft_output)

    fpga_peak = int(np.argmax(np.abs(fpga_fft)))
    numpy_peak = int(np.argmax(np.abs(numpy_fft)))
    reference_bins = np.array([FFT_BIN, FFT_POINTS - FFT_BIN])

    # The Xilinx core is configured for scaled fixed point. Estimate one complex
    # scale from the two dominant bins rather than assuming an exact amplitude.
    scale_terms = fpga_fft[reference_bins] / numpy_fft[reference_bins]
    scale_factor = np.mean(scale_terms)
    normalized_fpga = fpga_fft / scale_factor if scale_factor != 0 else fpga_fft
    normalized_error = normalized_fpga[reference_bins] - numpy_fft[reference_bins]

    print(f"FPGA maximum peak bin: {fpga_peak}")
    print(f"NumPy maximum peak bin: {numpy_peak}")
    print(f"Bin {FFT_BIN} FPGA magnitude: {abs(fpga_fft[FFT_BIN]):.6f}")
    print(f"Bin {FFT_BIN} NumPy magnitude: {abs(numpy_fft[FFT_BIN]):.6f}")
    print(f"Bin {FFT_POINTS - FFT_BIN} FPGA magnitude: {abs(fpga_fft[-FFT_BIN]):.6f}")
    print(f"Bin {FFT_POINTS - FFT_BIN} NumPy magnitude: {abs(numpy_fft[-FFT_BIN]):.6f}")
    print(f"Estimated FPGA/NumPy complex scale: {scale_factor}")
    for bin_index, error in zip(reference_bins, normalized_error):
        print(f"Normalized error at bin {bin_index}: {abs(error):.6f}")


if __name__ == "__main__":
    main()
