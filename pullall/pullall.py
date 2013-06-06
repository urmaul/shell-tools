#!/usr/bin/python

import os
import os.path
import sys
import subprocess

if len(sys.argv) < 2:
	print "Usage: pullall.py path"
	exit()

path = sys.argv[1]

for name in os.listdir( path ):
	if os.path.isdir( os.path.join(path, name) ):
		print "pulling " + name
		os.chdir( os.path.join(path, name) )
		process = subprocess.Popen(['git', 'pull'])
		process.wait()

