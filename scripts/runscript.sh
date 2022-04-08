#!/bin/bash
while getopts n:r::e:b:c:d flag
do
    case "${flag}" in
	n) name=${OPATARG};;
	r) rotation=${OPTARG};;
	e) epochs=${OPTARG};;
	b) batch_size=${OPTARG};;
	c) cycles=${OPTARG};;
	d) data_per_cycle=${OPTARG};;
    esac
done
cd ~
cd ..
cd ..
cd ..
cd ..
source /net/projects/scratch/winter/valid_until_31_July_2022/fheitzer/miniconda3/etc/profile.d/conda.sh
conda activate ba
cd /net/projects/scratch/winter/valid_until_31_July_2022/fheitzer/BAThesis-code/scripts
python run.py --name $name --rotation $rotation --epochs $epochs --batch_size $batch_size --cycles $cycles --data_per_cycle $data_per_cycle
