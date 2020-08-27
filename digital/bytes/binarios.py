secuencia = [0,1,0,1,1,0,0,1]

# byte = x(1,[1:8]) # byte

base = []
posiblesValores = 0 ; valor = 1
# hacer la base binaria
for i in range(len(secuencia) - 1 , 0 , -1):
    base.append( 2 ** i )
    posiblesValores += (2 ** i)

# a = 0
# while a < len(secuencia):
#     posiblesValores = posiblesValores + base[a]
#     a += 1
correspondiente = []
for i in range(0,len(secuencia) - 1 ,1):
    correspondiente.append( base[i] * secuencia[i])
    valor += (base[i] * secuencia[i])


print correspondiente , base
print " se pueden representar " , posiblesValores
print  " la secuencia " ,secuencia, " representa el numero " ,valor







