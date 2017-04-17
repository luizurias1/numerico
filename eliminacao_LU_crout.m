L = [0 0 0;0 0 0; 0 0 0];
U = [1 0 0;0 1 0; 0 0 1];
a = [4 2 3;2 -4 -1; -1 1 4];

L(1,1) = a(1,1);
L(2,1) = a(2,1);
L(3,1) = a(3,1);
n = size(a);
aux_l = 0;
aux_u = 0;
for k = 1:n
  for j = k+1:n
    for i = k:n
      for z = 1:k-1
        aux_l += L(i,z)*U(z,k);
        aux_u += L(k,z)*U(z,j);
      endfor
          L(i,k) = a(i,k) - aux_l;

      aux_u = 0;
    endfor
          U(k,j) = (a(k,j) - aux_u)/L(k,k);

    aux_l = 0;
  endfor
endfor

