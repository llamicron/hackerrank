#!/bin/python3
arr = list(map(int, input().strip().split(" ")))
arr.sort()
smallest = sum(arr[:4])
arr.sort(reverse = True)
largest = sum(arr[:4])

print(smallest, largest)
