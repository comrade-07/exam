while [ true ]
do
clear
echo "Select the geometric shape to compute for the area"
echo "1. Square" 
echo "2. Circle" 
echo "3. Rectangle" 
echo "4. Triangle" 
echo
echo "Type x to exit from the progress."
echo
read -p "Enter your choice : " choice
echo

case $choice in
1)
read -p "Enter the side of the square: " sqr
sqr=$((sqr*sqr))
echo "The area is : $sqr"
sleep 5
;;

2)
read -p "Enter the radius of the circle : " radius
area=`echo "scale=2;3.14 * ($radius * $radius)" | bc`
echo "The area is : $area"
sleep 5
;;

3)
read -p "Enter a length: " length
read -p "Enter a width: " width
area=$((length*width))
echo "The area of the rectangle is $area"
sleep 5
;;

4)
read -p "Enter the first side: " a
read -p "Enter the second side: " b
read -p "Enter the third side: " c
s=`echo "scale=4; ($a+$b+$c)/2" | bc`
area=`echo "scale=4; sqrt($s*($s-$a)*($s-$b)*($s-$c))" | bc`
echo "The area of the triangle is $area"
sleep 5
;;

x|X)
echo "Thank you for using the program"
break
;;

*)
echo "Invalid input, enter 1-4 only"
sleep 1
;;
esac

done
