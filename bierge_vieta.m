a = [2 0 -1 -2];
x0 = 1;
b(1) = a(1);
k = 0;
parada = 1;
while  parada >= 1e-4
  k++;
  for i=2:length(a)
   b(i) = a(i)+b(i-1)*x0;
   c(1)=b(1);
   if i <= length(b)
      c(i) = b(i)+c(i-1)*x0;
   end
  endfor 
delta = (b(length(a)))/(c(length(b)-1));
x0 = x0 - delta;
parada = abs(b(length(a)));

endwhile
