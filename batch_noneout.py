###Using batch.file
###A simple script

import sys
#print("Usage:constant,batch file,constant")
#print("Please enter the constant 1")
a = sys.stdin.readline()
e = a.strip()
#print("Please enter the constant 2")
c = sys.stdin.readline()
d = c.strip()
f = open("batch_file","r")
for line in f :
    contig = line.strip().split()[0]
    print("%s %s %s " %(e,contig,d))

