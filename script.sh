# ./download.sh

zanzibar=1
local=0

while [ $zanzibar -lt $local ]
do
	zanzibar=1
	local=2
	echo $zanzibar
	echo $local
done

./upload.sh
