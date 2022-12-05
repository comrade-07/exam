clear
read -p "Enter your age: " age

if [ "$age" -ge 1 ] && [ "$age" -le 9 ]; then
echo "Enjoy playing your toys."
	elif [ "$age" -ge 10 ] && [ "$age" -le 19 ]; then
	echo "Study Hard for a brighter future."
	elif [ "$age" -ge 20 ] && [ "$age" -le 29 ]; then
	echo "Take it easy, use your time wisely."
	elif [ "$age" -ge 30 ] && [ "$age" -le 39 ]; then
	echo "You are born to be a leader."
	elif [ "$age" -ge 40 ] && [ "$age" -le 49 ]; then
	echo "Take good care of your health."
	elif [ "$age" -ge 50 ] && [ "$age" -le 59 ]; then
	echo "Having fun with grandchildren."
	elif [ "$age" -ge 60 ] && [ "$age" -le 69 ]; then
	echo "Start enjoying your retirement."
	elif [ "$age" -ge 70 ] && [ "$age" -le 79 ]; then
	echo "Enjoy the things you've missed"
	elif [ "$age" -ge 80 ] && [ "$age" -le 89 ]; then
	echo "Remembering the good old days."
	elif [ "$age" -ge 90 ] && [ "$age" -le 99 ]; then
	echo "Thank God for the long life."
	elif [ "$age" -ge 100 ]; then
	echo "Entitled for Centenarian Privilege"
else 
echo "Invalid Age"
fi
