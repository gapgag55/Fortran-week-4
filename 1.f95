program AES

! Get matrix one (Hexa)
integer, dimension(3,3) :: a, b
integer :: i

!==============================================
! Enter row and column

print *, "Enter row and column: "
read(*, *) m,n

!==============================================
! Enter Matrix 1 and 2

print *, "Enter matrix (1): "
do i = 1,m 
	read(*, 2) (a(i, j), j=1, n)
  	2 FORMAT ( z4 )
end do

print *, "Enter matrix (2): "
do i = 1,m 
	read(*, 3) (b(i, j), j=1, n)
  	3 FORMAT ( z4 )
end do

!==============================================
! Excursive or of two matrix

do i = 1,m 
	write(*,4) (IEOR(a(i, j), b(i, j)), j=1, n)
	4 FORMAT ( z4 )
end do

!==============================================
end program AES