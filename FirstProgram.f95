program tut 
!A simple program that contains all information needed to learn fortran 
!All declarations must be at the top!
implicit none !This is needed so all interger variables starting with i-n arn't converted to reals
character ::name*5 !This lets the user type in up to 5 characters
integer :: answer,x,y,a, choice,i,m !integer delcarations
integer, parameter :: ikind=selected_real_kind(p=15)!Paremeter, lets you contain up to 15 decimal numbers
real(kind=ikind) :: summation,j
real::pi,b
summation = 0.0
print *,'Hey what is your name?'
read *,name
print *,'Hey ',name,' Type in 2 numbers to see some magic!'
read *,x,y 
answer= x + y !Why doesn't it like this
print *,'The summation of',x,'+',y,'is:',answer
print *,'The exp of',answer,'is:', answer**2
call system('cls') !Clear CMD screen
print*,'Trigs is supported in fortran'
print*,'Enter a angle between 0 and 90'
read *,a
pi = 4.0*atan(1.0)
print *,'the sine of',a,'is',sin(a*pi/180) !Calculating the sine. Trig functions are calculating in radians
call system('cls')
print *,'Menu system'
print *,'Press 1 2 or 3'
read *,choice
if(abs(choice) < 0.000001) then
  print *,'No zero values, choose another number'
  read *,choice
end if
if(choice == 1) then
  print*,'choice was 1'
else if(choice == 2) then
  print*,'choice was 2'
else if(choice == 3) then
  print*,'choice was 3'
else
  print*,'/= means not equal in fortran'
end if 
call system('cls')
print*,'When we devide to numbers and store it as a real, only the integer is stored. It cannot be casted'
b = x/3
print*,'For eg:',x,'being divided by 3 is:',b
call system('cls')
print*,'Iterations are done using a do loop'
do i = 0,20
  print *,i
end do
call system('cls')
print*,'We can also write to a file'
open(5,file ='myoutput.txt')
do i = 1,100
  write(5,*) i !"5" reads from this device and writes to this device 
end do
print *, 'finished'
call system('cls')
do m = 1,100
  j = m
  summation = summation + 1.0/(j**6)
  print*,summation
end do
  
end program tut
