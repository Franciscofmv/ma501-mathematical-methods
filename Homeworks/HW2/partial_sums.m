function graph
fplotf(partial_sums)
end


function [P] = partial_sums(t)
N = [1,2,4,8,16]
A = zeros(1,length(N))
    for i=1:length(N)
        A(i) = 2*(1-cos(N(i)*pi))/(N(i)*pi)*sin(2*N(i)*t)
    end
   P = sum(A) 
end