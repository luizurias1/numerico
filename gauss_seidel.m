A = [3 -1  -1; 1 3 1; 2 -2 4];
b = [1 5 4];
aux_j = 0;
x = [0 0 0];
n = size(A);
dif = 20;
cont = 0;
while dif >= 10^-5
  x2 = x;
  for i = 1:n
    

    for j=1:n
      if(j != i)
        aux_j += A(i,j)*x(j);
       endif
     endfor
     x(i) = (b(i) - aux_j)/A(i,i);
     aux_j = 0;
  endfor
  aux_x = 0;
  aux_x2 = 0;
    for i= 1:size(x)
      aux_x += x(i);
      aux_x2 += x2(i);
    endfor
    aux_x = aux_x/length(x);
    aux_x2 = aux_x2/length(x2);
    dif = abs(aux_x-aux_x2);
    cont+=1;
endwhile
x2
cont
    