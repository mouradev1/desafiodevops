import os
import sys

def validaPing(ip):
    result = os.system("ping -c 1 " + ip)
    if result == 0:
        print('\033[32m'+'LINK UP'+'\033[0;0m')
    else:
        print('\033[31m'+'LINK DOWN '+'\033[0;0m')
if len(sys.argv) > 1:
    validaPing(sys.argv[1])
else:
    ip = input('Digite a url')
    validaPing(ip)
