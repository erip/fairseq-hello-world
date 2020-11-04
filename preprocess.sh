#!/usr/bin/env sh

fairseq-preprocess --trainpref data-bpe/train --validpref data-bpe/valid --testpref data-bpe/test -s s -t t --destdir data-bin
