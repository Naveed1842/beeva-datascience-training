#!/usr/bin/python
import sys,json
import signal
signal.signal(signal.SIGPIPE, signal.SIG_DFL)

mylist = json.load(sys.stdin)['resultValues']

print ','.join(map(lambda x: x, mylist[0].keys()))
for mydict in mylist:
    print ','.join(map(lambda x: unicode(x).encode('utf-8'),mydict.values()))
#sys.stdout.flush()
