import os
import math
import sys

#args interpretation
batact=float(sys.argv[1]) #gets the first arg that gets parsed
batfull=float(sys.argv[2]) #gets the second arg that gets parsed
batperc=batact / batfull * 100 #trasforms max and actual in percetage
print(batperc) #prints the float percentage form
#this shold be the same for all laptops and all things you might possibly need a percentage for