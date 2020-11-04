#!/usr/bin/env sh

python spm_encode.py --model sentencepiece.bpe.model --inputs data/train.s data/train.t data/valid.s data/valid.t data/test.s data/test.t --outputs data-bpe/train.s data-bpe/train.t data-bpe/valid.s data-bpe/valid.t data-bpe/test.s data-bpe/test.t
