t = [0,1,1,-1,-1];
r = [1,1,-1,1,2];
d = [-1,-1,1,1];

b = [0,1,2,-1,-2];


n = length(t);
 
for i=2:n
  t(i) = t(i) - t(i)/r(i-1)*r(i-1);
  r(i) = r(i) - t(i)/r(i-1)*d(i-1);
  b(i) = b(i) - t(i)/r(i-1)*b(i-1);
endfor

x(n) = b(n)/r(n);
for i=n-1:-1:1
  x(i) = (b(i) - d(i)*x(i+1))/r(i);
endfor

x