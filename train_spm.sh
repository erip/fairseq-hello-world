#!/usr/bin/env sh

python spm_train.py --input=corpus.txt --model_prefix=sentencepiece.bpe --vocab_size=1000 --character_coverage=1.0
