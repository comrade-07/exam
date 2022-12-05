clear
while true; do
read -p "Enter the room capacity : " cap
read -p "Enter number of people in the meeting : " nump
echo

if [ "$cap" -eq "$nump" ]; then
echo "You can hold the meeting legally"
echo
	elif [ "$cap" -ge "$nump" ]; then
	xtr=$(( cap - nump ))
	echo "You can hold the meeting legally and you may include $xtr more guest/s!"
	echo
	elif [ "$cap" -lt "$nump" ]; then
	xtr=$(( nump - cap ))
	echo -e "Warning! You can't hold the meeting. But if you still want to hold \nthe meeting you have to exclude: $xtr guest (s)"
	echo
else
echo
fi

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

echo "End of Program"
