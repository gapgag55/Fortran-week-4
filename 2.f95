program BMI

integer, dimension(10) :: id
character(len=10), dimension(10) :: name
real, dimension(10) :: weight
real, dimension(10) :: height
real :: result

! real :: BMI

!opening the file for reading
open(12, file="C:\Users\Student\Desktop\Fortran_kopkap\BMI.txt", status="old")
open(13, file="C:\Users\Student\Desktop\Fortran_kopkap\NEW_BMI.txt", status="new")

do i = 1, 10
	read(12, *) id(i), name(i), weight(i), height(i)
end do 

! BMI 
do i = 1, 10
  	result = weight(i) / ((height(i) * 0.01)**2)
	write(13, *) "ID: ", id(i), " ", "Name: " , name(i), "Height: ", height(i), "Weight", weight(i), "BMI: ", result
end do 



! BMI = Whight (Kg) / [Height (m)]2

end program BMI