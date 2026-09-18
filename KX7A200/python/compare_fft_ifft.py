#!/usr/bin/env python3
"""Compare two-core xfft_0 simulation files with NumPy (no bit-exact claim)."""

from argparse import ArgumentParser
from pathlib import Path
import numpy as np

N = 4096
FFT_BIN = 32
FFT_SCALE = 1 / N
IFFT_SCALE = 1.0  # FFT shift 12, IFFT shift 0; no implicit IFFT 1/N.


def read_complex(path: Path) -> np.ndarray:
    rows = np.loadtxt(path, dtype=np.int64)
    if rows.shape != (N, 3) or not np.array_equal(rows[:, 0], np.arange(N)):
        raise ValueError(f"{path}: expected 4096 ordered index/real/imag rows")
    return rows[:, 1].astype(float) + 1j * rows[:, 2].astype(float)


def main() -> None:
    parser = ArgumentParser()
    parser.add_argument("--input", type=Path, default=Path("fft_input.hex"))
    parser.add_argument("--fft", type=Path, default=Path("fft_output.txt"))
    parser.add_argument("--ifft", type=Path, default=Path("ifft_output.txt"))
    args = parser.parse_args()

    raw = np.loadtxt(args.input, dtype=str)
    if raw.shape != (N,):
        raise ValueError("fft_input.hex must contain exactly 4096 words")
    samples = np.array([int(word, 16) & 0xFFFF for word in raw], dtype=np.uint16)
    samples = samples.view(np.int16).astype(float)
    fft_fpga = read_complex(args.fft)
    ifft_fpga = read_complex(args.ifft)
    fft_reference = np.fft.fft(samples)
    fft_scaled_reference = fft_reference * FFT_SCALE

    peak_bins_fpga = np.argsort(np.abs(fft_fpga))[-2:][::-1]
    peak_bins_numpy = np.argsort(np.abs(fft_reference))[-2:][::-1]
    principal_bins = [FFT_BIN, N - FFT_BIN]
    fft_peak_error = np.abs(fft_fpga[principal_bins] - fft_scaled_reference[principal_bins])
    fft_max_normalized_error = float(np.max(fft_peak_error))
    # Estimate measured scale from the two strong bins, separately from the
    # theoretical 1/4096. Noise bins are excluded from this estimate.
    measured_fft_scale = np.mean(
        fft_fpga[principal_bins] / fft_reference[principal_bins]
    )
    time_real = ifft_fpga.real / IFFT_SCALE
    time_imag = ifft_fpga.imag / IFFT_SCALE
    error = time_real - samples
    max_abs_error = float(np.max(np.abs(error)))
    mean_abs_error = float(np.mean(np.abs(error)))
    rmse = float(np.sqrt(np.mean(error**2)))
    measured_ifft_scale = float(np.dot(time_real, samples) / np.dot(samples, samples))

    print(f"FFT peak bins FPGA/NumPy: {peak_bins_fpga.tolist()} / {peak_bins_numpy.tolist()}")
    print(f"FFT peak magnitudes FPGA: {np.abs(fft_fpga[principal_bins])}")
    print(f"FFT theoretical/measured scale: {FFT_SCALE:.9g} / {measured_fft_scale}")
    print(f"FFT max normalized peak-bin error: {fft_max_normalized_error:.3f} LSB")
    print(f"IFFT theoretical/measured scale: {IFFT_SCALE:.6g} / {measured_ifft_scale:.6g}")
    print(f"IFFT max absolute error: {max_abs_error:.3f}")
    print(f"IFFT mean absolute error: {mean_abs_error:.3f}")
    print(f"IFFT RMSE: {rmse:.3f}")
    print(f"IFFT max imaginary residue: {np.max(np.abs(time_imag)):.3f}")

    fft_ok = (set(peak_bins_fpga) == set(principal_bins) and
              fft_max_normalized_error <= 8)
    # Truncation occurs in both cores; bound the end-to-end error separately
    # from the structural checks. Adjust only after inspecting first results.
    ifft_ok = max_abs_error <= 64 and np.max(np.abs(time_imag)) <= 64
    print(f"FFT CHECK: {'PASS' if fft_ok else 'FAIL'}")
    print(f"IFFT CHECK: {'PASS' if ifft_ok else 'FAIL'}")


if __name__ == "__main__":
    main()
