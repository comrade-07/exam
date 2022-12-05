clear
while true; do

while true
do
read -p "Enter a height between 3 and 20: " height

case $height in
[3-9]|1[0-9]|20) if [[ $height -ge 3 ]] && [[ $height -le 20 ]]
then
:
else
echo
fi
break;;
*)
echo "Invalid entry"
echo
;;
esac
done

while true
do
read -p "Enter a width between 3 and 20: " width

case $width in
[3-9]|1[0-9]|20) if [[ $weight -ge 3 ]] && [[ $weight -le 20 ]]
then
:
else
echo
fi
break;;
*)
echo "Invalid entry"
echo
;;
esac
done

for((i=1; i<=height; i++))
do
for((j = 1; j<=width; j++))
do
         if (( "$i" == 1  ||  "$i" == "$height"  ||  "$j" == 1  ||  "$j" == "$width" )); then
               echo -n "*"
          else
               echo -n " "
        fi
done
echo
done
while true; do
        read -p 'Do you want to run this program again (y/n)? '
        echo

        case "$REPLY" in
            [Yy]*) break   ;;
            [Nn]*) break 2 ;;
            *) echo 'Invalid input' >&2
        esac
done
done
echo "Thank you for using this program"
