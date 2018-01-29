memory_size=(128 256 512 1024 2048);
timeout=(10 20 120 300);
for i in "${memory_size[@]}"
do
        for j in "${timeout[@]}"
        do
                let start=$(date +%s%3N);
				gcloud beta functions deploy $3$4_$i$j --source $1 --$2 --memory $iMB --timeout $js         
                let end=$(date +%s%3N);
                echo $((end-start)) >> $3_$1.txt;
        done
done
./gcf_cleanup.sh $3$4;