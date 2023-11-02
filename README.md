# Gauss-Legendre Quadrature Subroutine

This repository contains a Fortran90 implementation of the Gauss-Legendre Quadrature algorithm in the subroutine `GaussLegendreQuadrature` in [Link to GQ.f90](GQ.f90). The Gauss-Legendre method is a numerical integration technique that approximates the definite integral of a function. The provided code efficiently computes the abscissas and weights of the Gauss-Legendre N-point quadrature formula for a given range of integration.
Gauss-Legendre Quadrature is particularly useful for accurately approximating definite integrals without requiring a large number of function evaluations. By providing this implementation in Fortran90, this repository aims to assist researchers and developers in efficiently computing integrals within their projects.

Feel free to integrate this code into your Fortran projects to streamline the calculation of definite integrals with high precision and computational efficiency.

## How to Use

To utilize this subroutine in your Fortran project, follow the steps below:

1. Include the `GaussLegendreQuadrature` subroutine in your Fortran code.
2. Define the integration interval limits (`X1` and `X2`), the number of points (`N`), and the arrays for the abscissas (`X`) and weights (`W`).
3. Call the `GaussLegendreQuadrature` subroutine with the required parameters.
4. Retrieve the computed abscissas and weights for further numerical integration operations.

## Parameters

The subroutine `GaussLegendreQuadrature` accepts the following parameters:

- `X1`: Lower limit of the integration interval.
- `X2`: Upper limit of the integration interval.
- `X`: Array to store the computed abscissas.
- `W`: Array to store the computed weights.
- `N`: The number of points for the Gauss-Legendre Quadrature formula.

## Constants

The subroutine uses the following constants:

- `eps`: Tolerance for convergence, set to 3.D-15.
- `Pi`: The value of π, calculated using `ACos(-1.D0)`.

## Algorithm

The subroutine utilizes an iterative process to calculate the abscissas and weights, including the refinement of roots using Newton's method. The computed values are stored in the provided arrays `X` and `W` for further use in the numerical integration process.

### Example Usage

To run the provided example code [Link to GQEx.f90](GQEx.f90), follow these steps:

1. Compile the Fortran code including the `GaussLegendreQuadrature` subroutine.
2. Ensure that the subroutine is accessible from the main program.
3. Set the values for `X1`, `X2`, and `N` as required for your specific integration problem.
4. Run the program to compute and print the resulting abscissas and weights.

```bash
$ gfortran -o Gaussian_Quadrature_Example GQ.f90 GQEx.f90
$ ./Gaussian_Quadrature_Example
```

## Limitations

Please note that the provided subroutine is specifically designed for the Gauss-Legendre N-point quadrature formula. Ensure that the inputs are within the defined constraints and that the integration interval is suitable for the desired numerical integration task.

Feel free to incorporate and modify this subroutine according to your specific numerical integration requirements.

## Contributing

Contributions are welcome. If you find any issues or want to enhance the implementation, feel free to create a pull request.

