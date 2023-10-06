# ./download.sh

zanzibar=$(python3 zanzibar.py)
local=0.0

sudo pigpiod

while (( $(awk 'BEGIN{print "'$local'"<"'$zanzibar'"}' 2>/dev/null) ))
do
	local=$(python3 DHT.py 27)
	echo "$zanzibar -- $local"
	python3 mechanics.py
done

./upload.sh
