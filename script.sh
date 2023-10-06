# ./download.sh

zanzibar=$(python3 zanzibar.py)
local=$(python3 DHT.py 27)

while [$zanzibar > $local ]
do
	python3 mechanics.py
done
./upload.sh
