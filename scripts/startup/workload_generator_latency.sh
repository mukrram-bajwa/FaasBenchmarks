let days=$1,hours=$2,minutes=$3;
let iterations=$((((days*24*60)+(hours*60)+minutes)/$4);
for((counter=0;counter<iterations;counter++));
do
		ab -k -c 1 -n 1 -g $5 $6
        sleep $4;
done