A = [1 2 3; 2 -4 -1; -1 1 4];
B = [7; 1; -5];
n = size(A);

vert = [0; 0; 0];
for i = 1:n
  vert(i) = A(i, 1);
endfor

o = [1; 2; 3];
for i = 1:n
  maior = max(abs(vert));
  for j = 1:n
    if (vert(j) == maior)
      o(i) = j;
      vert(j) = 0;
    endif
  endfor
endfor


