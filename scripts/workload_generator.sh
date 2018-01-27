let threshold=20;
let days=$1,hours=$2,minutes=$3;
let iterations=$(((days*24*3)+(hours*3)+(minutes/20)));
for((counter=0;counter<iterations;counter++));
do
        ./workload_generator_module.sh random random rand &
        ./workload_generator_module.sh hash hash md5 &
        ./workload_generator_module.sh rss feed rss &
        sleep 1200;
done