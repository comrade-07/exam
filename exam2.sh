clear
read -p "Enter the PURCHASE AMOUNT : " pcamt
read -p "Enter the PAYMENT AMOUNT  : " payamt
echo

vat=`echo "scale=2; 12 / 100 * $pcamt" | bc`
echo "Vat amount (12%)          : $vat"

totalamt=`echo "scale=2; $pcamt + $vat" | bc`
echo "Total Amoutn to be paid   : $totalamt"


if [ $(echo "$payamt>=$totalamt" | bc ) -eq 1 ]; then
change=`echo "scale=2; $payamt - $totalamt" | bc`
echo "Your change is            : $change"
	elif [ $(echo "$payamt<$totalamt" | bc ) -eq 1 ]; then
        echo "Sorry, your payment is not enough"
else
echo
fi

