
Av = 10 ; Zin = 200*10**3;Zout = 5000

I_dss = 0.2*10**-3   #input('Ingresar corriente de saturacion')
V_p = -0.3   #input('Ingrese voltaje Pinch OFF')
V_dd = 9

# calculo de I_DQ por medio de shockley
V_gsq = -0.1; I_dq = I_dss * (1- (V_gsq/V_p))

# a partir de la ganancia encontrar la transconductancia y asi R_d  y en este encontrar V_rd
gm = -2 * (I_dss)/V_p*(1-(V_gsq/V_p)); R_d  = Av/gm; V_rd = R_d* I_dq

# Encontrar R1 y R2
porcentaje_voltaje = input('Defina el procentaje de voltaje V_ds ')
V_ds = V_dd * porcentaje_voltaje /(100); V_rs = V_dd - V_ds

 #encontrar R_s
R_s = V_rs / I_dq
 # encontrar V_g
V_g = V_gsq + V_rs
R2 =  ((V_dd/V_g)* Zin )/((V_dd/V_g)-1)
R1 = R2*((V_dd/V_g)-1)

print ('R1 =',round(R1))
print ('R2 =',round(R2))
print ('Rd =',R_d)
print ('Rs =' ,R_s)

