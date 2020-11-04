#!/usr/bin/env python3

import string 
import random

def generate_data(split, n_examples=100):
    with open(f'data/{split}.s', 'w', encoding='utf-8') as s, \
         open(f'data/{split}.t', 'w', encoding='utf-8') as t:
         
        for _ in range(n_examples):
            s_example = ''.join(random.sample(string.ascii_lowercase + ' ', 20))
            t_example = s_example.upper()
            print(s_example, file=s)
            print(t_example, file=t)

if __name__ == "__main__":
    for split in ("train", "valid", "test"):
        generate_data(split)
