#!/usr/bin/env python3

find data -name "train.*" -exec cat {} >> corpus.txt \;
find data -name "valid.*" -exec cat {} >> corpus.txt \;
