#!/bin/python3
pos = 0
neg = 0
zeroes = 0

import sys

# Size of the array
arr = [int(x) for x in sys.argv[1].strip().split(" ")]
arr_size = len(arr)
# arr_size = 11
# arr = [1, 2, 3, 4, 5, -6, -7, -8, -9, 0, 0]

for x in arr:
    if x > 0:
        pos += 1
    elif x < 0:
        neg += 1
    elif x == 0:
        zeroes += 1

ratioes = {
    "pos": float(pos) / float(arr_size),
    "neg": float(neg) / float(arr_size),
    "zero": float(zeroes) / float(arr_size)
}

print round(ratioes['pos'], 4)
print round(ratioes['neg'], 4)
print round(ratioes['zero'], 4)
