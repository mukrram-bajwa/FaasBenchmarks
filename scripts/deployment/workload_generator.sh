let threshold=20;
let days=$6,hours=$7,minutes=$8;
let iterations=$(((days*24*3)+(hours*3)+(minutes/20)));
for((counter=0;counter<iterations;counter++));
do
        if [ "$1" == "lambda" ]; then
                ./aws_lambda_workload_generator_module.sh $2 $3 random rand &
                ./aws_lambda_workload_generator_module.sh $2 $4 hash md5 &
                ./aws_lambda_workload_generator_module.sh $2 $5 feed rss &
        elif [ "$1" == "gcf" ]; then
                ./gcf_lambda_workload_generator_module.sh $2 $3 random rand &
                ./gcf_lambda_workload_generator_module.sh $2 $4 hash md5 &
                ./gcf_lambda_workload_generator_module.sh $2 $5 feed rss &
        else
                exit 1;
        fi
        sleep 1200;
done