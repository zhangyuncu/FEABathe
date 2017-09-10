% example 3.22
syms potential x u E a1 a2;
u = a1*x + a2*x^2;
du_dx=diff(u,x)
dP_da1=E/2*int(diff((du_dx)^2,a1),x,0,100)+E/2*int(diff((1+(x-100)/40)^2*(du_dx)^2,a1),x,100,180)-100*diff(subs(u,x,180),a1);
dP_da2=E/2*int(diff((du_dx)^2,a2),x,0,100)+E/2*int(diff((1+(x-100)/40)^2*(du_dx)^2,a2),x,100,180)-100*diff(subs(u,x,180),a2);

pretty(simple(dP_da1))
pretty(simple(dP_da2))

S=solve(dP_da1,dP_da2,a1,a2);
S = [S.a1 S.a2]