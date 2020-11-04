#!/usr/bin/env sh

fairseq-train \
    data-bin \
    --arch transformer --share-decoder-input-output-embed \
    --optimizer adam --adam-betas '(0.9, 0.98)' --clip-norm 0.0 \
    --lr 5e-4 --lr-scheduler inverse_sqrt --warmup-updates 4000 \
    --dropout 0.3 --weight-decay 0.0001 \
    --encoder-layers 2 \
    --decoder-layers 2 \
    --decoder-attention-heads 2 \
    --encoder-attention-heads 2 \
    --criterion label_smoothed_cross_entropy --label-smoothing 0.1 \
    --max-tokens 4000 \
    --max-epoch 5

