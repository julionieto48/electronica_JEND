clc, clear all , close all;
%%
% *operaciones binarias*

byte = zeros(1,8) ;
exponente = length(byte) - 1 : -1 : 0 ; 
baseDos = 2.^ exponente ;

% entradas de usuario
a = [0 1 0 0 1 0 0 1] ;
b = [0 0 0 0 1 1 0 0] ;

% suma directa
valorA = sum(a.*(baseDos)) ; valorB = sum(b.*(baseDos)) ;

suma = valorA + valorB  % suma es el numero que se desea convertir

%%
% pasar de base 10 a base 2

% binario = '' ;
% 
% if (suma > 0)
%     while (suma > 0)
%         
%         if (mod(suma,2) == 0 ) % suma%2
%             %binario = '0' + binario ;
%             binario = strcat('0' , binario);
%         else
%             %binario = '1' + binario ; 
%             binario = strcat('1' , binario);
%         end
%         suma = int8(suma) / 2 ;   % se reasigna el valor tomando su parte entera
%     end
% elseif (suma == 0) % si el valor es cero se muestra este valor
%     binario = '0' ;  
% end


%%

for ( i = 8 : -1 : 1)   %  8     7     6     5     4     3     2

  binario(i,1) = fix( rem(suma,2)    ) ; % fix redondea al entero mas cercano a cero y rem es el modulo
  suma = suma/2 ;
end
binario = binario.'

