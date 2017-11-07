#!/usr/bin/python3

import fileinput
import random

attributes = []
hero_attributes = []
for line in fileinput.input():
	line = line.replace("\n", "")
	
	if "https" in line:
		pass
		#~ print(line)
	
	if "HERO" in line:
		attributes = line.split("\t")
		#~ print(line)
	
	else:
		hero_attributes.append(line.split("\n"))
	
n = random.randint(0,len(hero_attributes)-1)
print(hero_attributes[n][0])
