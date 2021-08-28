
def log(log):
    f = open("./log/calculadorapython.log", "w")
    f.write(log + " \n")
    f.close()
def calculadora():
    A = float(input("Digite um inteiro: "))
    B = float(input("Digite outro inteiro: "))
    resultado = A / B
    print('Resultado da soma {:.1f}'.format(resultado))
    log('Resultado da soma {:.1f}'.format(resultado))
calculadora()
