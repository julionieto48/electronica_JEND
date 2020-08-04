# Cálculo de los parámetros Idss y Vgs(off) de un transistor JFET

# Uso:
# 1. Obtenga al menos dos mediciones en laboratorio de Id y Vgs
# 2. Ejecute el programa
# 3. Introduzca el primer par de valores Id y Vgs medidos en laboratorio.
#    Los valores se deben introducir separados por comas. Ejemplo: 0.5e-3, -0.5
# 4. Repita el procedimiento para el segundo par de valores
# 5. En pantalla aparecerán impresos los valores calculados para Idss y Vgs(off)

# Aclaración: para que el programa funcione se debe tener instalada la librería scipy de Python


from scipy.optimize import fsolve

input_1 = input('Introduzca el primer par de valores Id, Vgs (separados por comas): ').split(',')
input_2 = input('Introduzca el segundo par de valores Id, Vgs (separados por comas): ').split(',')

Id1 = float(input_1[0])
Vgs1 = float(input_1[1])
Id2 = float(input_2[0])
Vgs2 = float(input_2[1])

def equations(p):
	Idss, Vgsoff = p
	return (Id1-Idss*(1-Vgs1/Vgsoff)**2, Id2-Idss*(1-Vgs2/Vgsoff)**2 )

Idss, Vgsoff = fsolve(equations, (50,50))

print('Idss = {} mA'.format(Idss*1000), ', Vgs(off) = -{} V'.format(Vgsoff))