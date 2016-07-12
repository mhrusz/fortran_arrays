PROGRAM ex72
      ! program for evaluating the normal probability function phi
      ! defined as follow
      ! phi  = 1/sqrt(2pi) * exp(-x^2/2)
      IMPLICIT NONE
      REAL, PARAMETER :: Pi = 3.1415927
      REAL, PARAMETER :: l_b=-3.0, u_b=3.0
      REAL, PARAMETER :: step=0.2
      INTEGER, PARAMETER :: lenn=INT((u_b-l_b)/step)
      INTEGER :: i
      REAL :: a(lenn), x


      ! evaluate function
      x = l_b
      DO i=1, lenn
        a(i) = 1/SQRT(2*Pi) * EXP(-x**2/2)
        IF (x < u_b) THEN
            x = x + step
        ELSE
            EXIT
        END IF
      END DO

      ! print values
      DO i=1, lenn
        PRINT *, a(i)
      END DO
END PROGRAM ex72
