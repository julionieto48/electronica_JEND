clc , clear all , close all ;
%%
% *Operaciones logicas* 

%%
% construccion de la tabla logica
disp('__________') ;
tabla = zeros(4,2);
arreglo = [0 0 1 1 0 1 0 1] ;
% for (i = 1 : 4)
%     for (j = 1 : 4)
%         tabla(i,j) =  ;
%         
%     end
% end
% tabla


 for (i = 0 : 1)
     for( j = 0 : 1)
        formatSpec = '   %4.2f   |   %4.2f   \n';
        tablaUno =  fprintf(formatSpec, i , j );
     end
 end
 %%
 
op = 3 ; % escoger el tipo de operacion

disp('__________') ;

if (op == 1)
    a = true ; b = false ;
    p = [a ; b ] ; notP = [~a ;~b ];
    disp('   p      |   not p   ');
    formatSpec = '   %4.2f   |   %4.2f   \n';
    fprintf(formatSpec, round(p) , round(notP) );
end
%%

 arreglo = reshape(arreglo,[4,2]) ; % pasarlo a 4 filas 2 columnas ojo con el uso de reshape de lo contrario se usa transpose
 % arreglo = [0 0 0 1 1 0 1 1] ; arreglo = arreglo.'
 %%

if (op == 2) % and
    formatSpecUno = '   %4.2f   |   %4.2f   |   %4.2f   \n';
    disp('   p      |   q      | p&q');
    p = arreglo(: , 1) ; q = arreglo(: , 2) ; andPQ = [p&q] ;
    fprintf(formatSpecUno, round(p) ,round(q) ,round(andPQ) );
end


if (op == 3) % or
    formatSpecUno = '   %4.2f   |   %4.2f   |   %4.2f   \n';
    disp('   p      |   q      | p|q');
    p = arreglo(: , 1) ; q = arreglo(: , 2) ; orPQ = [p|q] ;
    fprintf(formatSpecUno, round(p) ,round(q) ,round(orPQ) );
end

if (op == 4) % or
    formatSpecUno = '   %4.2f   |   %4.2f   |   %4.2f   \n';
    disp('   p      |   q      | p xor q');
    p = arreglo(: , 1) ; q = arreglo(: , 2) ; xorPQ = [xor(p,q)] ;
    fprintf(formatSpecUno, round(p) ,round(q) ,round(xorPQ) );
end
%
% https://www.mathworks.com/help/matlab/math/multidimensional-arrays.html
% https://www.youtube.com/watch?v=Pfyuv5ZnNNw