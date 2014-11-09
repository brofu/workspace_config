
import subprocess

f = r'/home/deepe/workspace/shell/pipe.sh'
"""
This code will report PIPE broken, why?
try:
    p = subprocess.Popen(f, shell = True, stdin = subprocess.PIPE,
                         stdout = subprocess.PIPE)
    for i in range(1000000):
        p.stdin.write(str(i) + '\n')
        print p.stdout.readline()
except Exception as e:
    raise(e)
"""
try:
    p = subprocess.Popen(f, shell = True, stdin = subprocess.PIPE)
    for i in range(10):
        p.stdin.write(str(i) + '\n')
        #print p.stdout.readline()
        print i
except Exception as e:
    raise(e)
