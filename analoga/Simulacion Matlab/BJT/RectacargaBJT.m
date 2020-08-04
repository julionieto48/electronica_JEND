clc; clear all ; close all;
%%
Vce = linspace(0,15,101);
Vcc = 20;Rc = 2000;Re = 1000;beta = 100:200;
Vbe = 0.7; Rb = 772000;


Ic = Vcc- Vce./(Rc);
Icsat = Vcc / (Rc+Re);
figure;scatter(0,Icsat);hold on;scatter(Vcc,0);xlim([0 20]);ylim([0 0.01]);grid on;hold on ;
plot([Vcc 0], [0 Icsat]); hold on;
xlabel('Vce');ylabel('Ic');

%Ib = Vcc - Vbe./(Rb+(beta+1)*Re);
Ib = beta./ Ic;
plot(Ib)
%%
% del parcial
clc; clear all ; close all;
Vce = linspace(0,15,101);
Vcc = 12;Rc = 550;Re = 3000;beta = 100:200;
Vbe = 0.7; Rb = 772000;


Ic = Vcc- Vce./(Rc);
Icsat = Vcc / (Rc+Re);
figure;scatter(0,Icsat);hold on;scatter(Vcc,0);xlim([0 20]);ylim([0 0.01]);grid on;hold on ;
plot([Vcc 0], [0 Icsat]); hold on;
xlabel('Vce');ylabel('Ic');

%Ib = Vcc - Vbe./(Rb+(beta+1)*Re);
Ib = beta./ Ic;
plot(Ib)