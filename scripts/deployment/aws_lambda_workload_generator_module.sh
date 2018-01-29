let code;
if [ "$1" == "s3" ]; then
        code="--code S3Bucket=lambdacodeaws1,S3Key=$2.zip";
elif [ "$1" == "local" ]; then
        code="--zip-file fileb://$2";
fi
memory_size=(128 256 512 1024 2048);
timeout=(10 20 120 300);
for i in "${memory_size[@]}"
do
        for j in "${timeout[@]}"
        do
                let start=$(date +%s%3N);
                aws lambda create-function --function-name $3$4_$i$j --runtime nodejs6.10 --role  arn:aws:iam::473862275935:role/service-role/lambda-role --memory-size $i --timeout $j --handler $3.$4 $code > /dev/null;
                let end=$(date +%s%3N);
                echo $((end-start)) >> $3_$1.txt;
        done
done
./aws_cleanup.sh $3$4;