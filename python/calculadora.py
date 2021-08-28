import sys
def log(log):
    f = open("./log/calculadorapython.log", "w")
    f.write(log + " \n")
    f.close()
def calculadora(A,B):
    resultado = (A / B)
    print('Resultado da soma {:.1f}'.format(resultado))
    log('Resultado da soma {:.1f}'.format(resultado))

if len(sys.argv) > 1:
    A = float(sys.argv[1]);
    B =float(sys.argv[2])
    calculadora(A,B)
else:
    A = float(input("Digite um inteiro: "))
    B = float(input("Digite outro inteiro: "))
    calculadora(A,B)
