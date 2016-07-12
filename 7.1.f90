PROGRAM ex71
      IMPLICIT NONE

      INTEGER, DIMENSION(20) :: a
      INTEGER :: i

      DO i=1,SIZE(a)
        READ *, a(i)
      END DO
      
      ! write back
      DO i=SIZE(a),1,-1
        PRINT *, a(i)
      END DO
END PROGRAM ex71
