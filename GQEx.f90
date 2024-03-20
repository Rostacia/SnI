PROGRAM Gaussian_Quadrature_Example
IMPLICIT NONE

DOUBLE PRECISION :: X1, X2
DOUBLE PRECISION, DIMENSION(2) :: X, W
INTEGER :: N
! Set the values for the 2-point Gaussian Quadrature formula for the integral from -1 to 1
X1 = -1.0D0
X2 = 1.0D0
N = 2
! Call the GAULEG subroutine
CALL GAULEG(X1, X2, X, W, N)

! Print the resulting abscissas and weights
PRINT *, "Abscissas:"
PRINT *, X
PRINT *, "Weights:"
PRINT *, W

END PROGRAM Gaussian_Quadrature_Example
