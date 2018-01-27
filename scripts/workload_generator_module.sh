memory_size=(128 256 512 1024 2048);
timeout=(10 20 120 300);
for i in "${memory_size[@]}"
do
        for j in "${timeout[@]}"
        do
                let start=$(date +%s%3N);
                aws lambda create-function --function-name $1_$i$j --runtime nodejs6.10 --role arn:aws:iam::163846408412:role/service-role/lambda-role --memory-size $i --timeout $j --handler $2.$3 --code S3Bucket=lambdacodeaws,S3Key=$1.zip > /dev/null;
                let end=$(date +%s%3N);
                echo $((end-start)) >> $1.txt;
        done
done
./cleanup.sh $1;