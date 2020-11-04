#!/usr/bin/env sh

mkdir model

cp checkpoints/checkpoint_best.pt model/
cp sentencepiece* model/
cp data-bin/dict* model/
