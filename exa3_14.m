% example 3.14
syms k P L;
K=[5*k+2*P/L -(2*k+P/L);-(2*k+P/L) 2*k+P/L]
lambda=eig(K)
pretty(lambda)