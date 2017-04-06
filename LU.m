  L = [0 0 0;0 0 0; 0 0 0];
U = [1 0 0;0 1 0; 0 0 1];
a = [4 2 3;2 -4 -1; -1 1 4];
  
 b = [7 1 -5];
n = size(a);
aux_l = 0;
aux_u = 0;
 
 
for k = 1:n
  for i = k:n
    for z = 1:k-1
      aux_l += L(i,z)*U(z,k);
    endfor
    L(i,k) = a(i,k) - aux_l;
    aux_l = 0; 
  endfor
  for j = k+1:n
    for z = 1:k-1
      aux_u += L(k,z)*U(z,j);
    endfor
    U(k,j) = (a(k,j) - aux_u)/L(k,k);
    aux_u = 0;
  endfor
endfor

%calculando y 
aux_y = 0;
for i = 1:n
  for j = 1:i-1 %somatorio y1 -> y3
    aux_y += L(i,j)*y(j);
  endfor
  y(i) = (b(i) - aux_y)/L(i,i);
  aux_y = 0;
endfor

%calculando x
aux_x = 0;
for i = n:-1:1
  for j = i+1:n %somatorio do x3 -> x1
    aux_x += U(i,j)*x(j);
  endfor
  x(i) = (y(i) - aux_x);
  aux_x = 0;
endfor
