A = [4 2 3; 2 -4 -1; -1 1 4];
B = [7; 1; -5];
n = size(A);

for k = 1:n-1
  for i = k+1:n
    l = A(i,k)/A(k, k);
    for j = k:n
      A(i, j) = A(i, j) - l*A(k,j);
     endfor
     B(i) = B(i) - l*B(k);
   endfor
endfor
aux = 0;
X = [0,0 ,0 ];
for i = n:-1:1
  for j = n:-1:i+1
    aux = aux + A(i, j)*X(j);
  endfor
  X(i) = (B(i)-aux)/A(i, i);
  aux = 0;
endfor
X