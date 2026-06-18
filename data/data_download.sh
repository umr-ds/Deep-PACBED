#!/bin/bash
dataset_names=$1

declare -A download_links=( 
["Exp"]="4f1b035b-3251-4622-baf0-8d12a957e176"
)

for dataset_name in $dataset_names; do
    if [ ! -d ${dataset_name} ]; then
        echo "Downloading ${dataset_name} data set..." &&
        wget -O  ${dataset_name}.tar "https://open.uni-marburg.de/bitstreams/${download_links[${dataset_name}]}/download" &&

        echo "Extracting..." &&
        mkdir ./${dataset_name} &&
        tar -xf ${dataset_name}.tar --directory ./${dataset_name} && 
        rm ${dataset_name}.tar &&
        
        echo "Done."
    else
        echo "${dataset_name} dataset already exists..."
    fi
done