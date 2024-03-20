Subroutine GAULEG(X1, X2, X, W, N)
Implicit None
Double Precision, Intent(IN) :: X1, X2
Double Precision, Intent(OUT) :: X(N), W(N)
Integer, Intent(IN) :: N
Double Precision :: Pi, eps
Integer :: M, i, j
Double Precision :: XM, XL, Z, P1, P2, P3, PP, Z1
Logical :: converged
! Define constants
Parameter (eps = 3.D-15, Pi = ACos(-1.D0))

! Calculate the midpoint and half-length of the interval
M = (N + 1) / 2
XM = 0.5D0 * (X2 + X1)
XL = 0.5D0 * (X2 - X1)
! Compute the abscissas and weights for the Gauss-Legendre N-point quadrature formula
do i = 1, M
    Z = Cos(Pi * (i - 0.25D0) / (N + 0.5D0))
    converged = .false.
       
    do while (.not. converged)
        ! Iterate to find the roots
        P1 = 1.D0
        P2 = 0.D0
        do j = 1, N
            P3 = P2
            P2 = P1
            P1 = ((2.D0 * j - 1.D0) * Z * P2 - (j - 1.D0) * P3) / j
        end do
        ! Refine the root using Newton's method
        PP = N * (Z * P1 - P2) / (Z * Z - 1.D0)
        Z1 = Z
        Z = Z1 - P1 / PP
        ! Check termination condition
        if (Abs(Z - Z1) <= eps) then
            converged = .true.
        end if
    end do

    ! Store the abscissas and weights
    X(i) = XM - XL * Z
    X(N + 1 - i) = XM + XL * Z
    W(i) = 2.D0 * XL / ((1.D0 - Z * Z) * PP * PP)
    W(N + 1 - i) = W(i)
end do

end 
    
    
    
