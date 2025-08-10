t = 10;
n=2
sin(t)*sin(n*t)
1/2*(cos((n-1)*t)-cos((1+n)*t))
cos(3*pi)

sin(10)*cos(10)
sin(2*10)/2

A = zeros(5);
N = [1,2,4,8,16];
for n in 1:length(N)
    A[n] = (2*pi*N[n]*cos(pi*N[n])-2*sin(pi*N[n]))/(pi*N[n]*(pi*N[n]-sin(pi*N[n])))
end
using Plots

function FS(x)
    A[1] * sin(pi*N[1]*x) + A[2] * sin(pi*N[2]*x) +
    A[3] * sin(pi*N[3]*x)+ A[4] *  sin(pi*N[4]*x) +
    A[5] * sin(pi*N[5]*x)
 end

 f =plot(FS, title = "Fourier Series for sawtooth function", legend = false)


 savefig(f,"file.png")
