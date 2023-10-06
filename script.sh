# ./download.sh

zanzibar=1
local=0

sudo pigpiod

while [ "$local" -lt "$zanzibar" ]
do
	zanzibar=$(python3 zanzibar.py)
	local=$(python3 DHT.py 27 | tr -cd '0-9' | bc)
	python3 mechanics.py
done

./upload.sh
