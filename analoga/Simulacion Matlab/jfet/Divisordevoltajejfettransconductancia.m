clc;clear all;close all

Vgs = linspace(-100, 100);Id_ss =0.003; R2=500000;R1 = 4968750;Vdd = 14;Vg = (R2*Vdd)/(R1+R2);
Rs =1131.040652; Vp =-3.1;

Id = (Vg/Rs)-(1/Rs)*Vgs;
plot(Vgs,Id);hold on

Id_2 = Id_ss*((1-(Vgs/Vp)).^(2));plot(Vgs,Id_2);grid on ;ylim([-0.001 0.03]);xlim([-4 3]);title('Transconductancia');
xlabel('Vgs');ylabel('Id');
