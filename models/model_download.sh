#!/bin/bash
model_names=$1

declare -A download_links=( 
["EfficientNetV2S_MTAN"]="ae80a46f-6592-4fe0-9811-bbd8057c10ab" 
["EfficientNetV2S_Branching"]="4dac936a-c7b2-4cfd-9999-0a360355200e"
)

for model_name in $model_names; do
    if [[ ! -d ${model_name} ]]; then        
        echo "Downloading ${model_name} model..." &&
        wget -O  ${model_name}.tar "https://open.uni-marburg.de/bitstreams/${download_links[${model_name}]}/download" &&
        
        echo "Extracting..." &&
        mkdir ${model_name} &&
        tar -xf ${model_name}.tar --directory ./${model_name} &&
        rm ${model_name}.tar &&
        
        echo "Done."
    else
        echo "${model_name} model already exists..."
    fi
done