#!/usr/bin/env sh

sh generate_corpus.sh
sh train_spm.sh
sh encode_spm.sh
sh train.sh
sh package_model.sh
python test_inference.py
