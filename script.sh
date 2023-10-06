# ./download.sh

zanzibar=1
local=0

while [ $zanzibar -lt $local ]
do
	zanzibar=$(python3 zanzibar.py)
	local=$(python3 DHT.py)

	python3 mechanics.py
done

./upload.sh
