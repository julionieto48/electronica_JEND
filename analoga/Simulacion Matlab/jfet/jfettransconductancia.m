clc; clear all ; close all;
%%%
% JFET 
Vp = -0.962 ; Idss = 6.37;
Vgs = linspace(Vp,0.05,500);
Id = Idss * ((1 -(Vgs/Vp) ).^(2));
figure ;plot(Vgs,Id);grid on; hold on;scatter(Vp,0);scatter(0,Idss);hold on;
xlabel('Vgs');ylabel('Id');
%autopolarizacion
Rs =0.3;
Idq = -Vgs./Rs; plot(Vgs,Idq);hold on
%Divisor de voltaje
Vdd = 12; R1 = 9375000; R2 = 1119402 ;Vg = R2* Vdd / (R1+ R2);
Idq1 =(Vg/Rs)-(1/Rs)*Vgs;plot(Vgs,Idq);hold on; % scatter(Vg,0);

%%
% del parcial
% acople
Vp = -1 ; Idss = 1.87;
Vgs = linspace(Vp,0.05,500);
Id = Idss * ((1 -(Vgs/Vp) ).^(2));
figure ;plot(Vgs,Id);grid on; hold on;scatter(Vp,0);scatter(0,Idss);hold on;
xlabel('Vgs');ylabel('Id');
%autopolarizacion
Rs =0.3;
Idq = -Vgs./Rs; plot(Vgs,Idq);hold on

% amplificacion
Vp = -1.8 ; Idss = 2.88;
Vgs = linspace(Vp,0.05,500);
Id = Idss * ((1 -(Vgs/Vp) ).^(2));
figure ;plot(Vgs,Id);grid on; hold on;scatter(Vp,0);scatter(0,Idss);hold on;
xlabel('Vgs');ylabel('Id');
%autopolarizacion
Rs =0.3;
Idq = -Vgs./Rs; plot(Vgs,Idq);hold on

