#!/usr/bin/env sh

mkdir data

python generate_data.py
sh generate_corpus.sh
sh train_spm.sh
mkdir data-bpe
sh encode_spm.sh
sh preprocess.sh
sh train.sh
sh package_model.sh
python test_inference.py
