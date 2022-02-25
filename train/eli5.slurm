#! /bin/sh
#SBATCH --job-name=eli5
#SBATCH --output=eli5.out
#SBATCH --error=eli5.err
#SBATCH --partition=studentbatch
#SBATCH --time=820
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --gpus=1
export HF_DATASETS_CACHE="/home/joberant/NLP_2122/dorcoh4/.cache/huggingface/datasets"
export TRANSFORMERS_CACHE="/home/joberant/NLP_2122/dorcoh4/.cache/huggingface/"
python bart.py --train_file train_eli5.json --validation_file validation_eli5.json --output_dir my_bartscore
