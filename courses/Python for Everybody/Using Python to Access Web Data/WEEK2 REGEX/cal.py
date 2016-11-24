import re

fname = raw_input('Enter file name: ')
if ( len(fname) < 1 ) : fname = 'regex_sum_331970.txt'

data = open(fname).read()

sum = 0

nums = re.findall('[0-9]+',data)
for num in nums:
	sum = sum + int(num)

print sum