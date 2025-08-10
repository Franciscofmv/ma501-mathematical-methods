using Plots

function partial_sums(t)
N = [1,2,4,8,16];
2*(1-cos(N[1]*pi))/(N[1]*pi)*sin(2*N[1]*t)+
2*(1-cos(N[2]*pi))/(N[2]*pi)*sin(2*N[2]*t)+
2*(1-cos(N[3]*pi))/(N[3]*pi)*sin(2*N[3]*t)+
2*(1-cos(N[4]*pi))/(N[4]*pi)*sin(2*N[4]*t)+
2*(1-cos(N[5]*pi))/(N[5]*pi)*sin(2*N[5]*t)
#A = zeros(length(N))#
    #for i in 1:length(N)
     #   A[i] = 2*(1-cos(N[i]*pi))/(N[i]*pi)*sin(2*N[i]*t)
    #end
end

h = plot(partial_sums,title = "Square Wave approximation",legend=false)
savefig(h,"square.png")