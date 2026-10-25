# r23_512p_fft

A fixed-point, 512-point radix-2^3 FFT Simulink model with eight parallel data lanes.

## Getting Started

1. Open this folder in MATLAB. The model was saved in R2026b.
2. Run `r23_512p_fft_input.m` to prepare `fft_in` and `src_data` in the workspace.
3. Open `r23_512p_fft.slx` and inspect the `FFT_TOP` subsystem before simulating.

The model uses DSP System Toolbox workspace-source blocks and fixed-point arithmetic. Its output logging variable is `simout`.

## Files

- [`r23_512p_fft.slx`](r23_512p_fft.slx): FFT model and input/output harness.
- [`r23_512p_fft_input.m`](r23_512p_fft_input.m): a 512-sample complex input frame, split into eight 64-sample lanes (`cha` through `chh`). Each lane stores real and imaginary parts in separate columns.

This repository contains the model and input script, not generated HDL or implementation reports. Review output ordering, scaling, and numerical accuracy for your intended use.
