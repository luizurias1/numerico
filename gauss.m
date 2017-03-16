A = [4 2 3; 2 -4 -1; -1 1 4;];
b = [7;1;-5];

for k = 1:(size(A,1)-1)
    for i = k+1:(size(A,1))
        m=A(i,k)/A(k,k);
        
        for j = k:(size(A,1))
            A(i,j) = A(i,j) - m * A(k,j);
        end
        b(i) = b(i)-m*b(k);
    end
end
A
b