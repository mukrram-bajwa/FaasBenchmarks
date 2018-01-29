memory_size=(128 256 512 1024 2048);
timeout=(10 20 120 300);
for i in "${memory_size[@]}"
do
        for j in "${timeout[@]}"
        do
                gcloud alpha functions delete $1_$i$j;
        done
done