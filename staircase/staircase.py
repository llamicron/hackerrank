#!/usr/bin/python

size = int(raw_input().strip())

staircase = []

for x in range(0, size):
    staircase.append(["#"] * (x + 1))
    while len(staircase[x]) < size:
        staircase[x].insert(0, " ")

for row in staircase:
    print "".join(str(x) for x in row)
