% example 3.11 variational approach

syms P L U1 U2 alpha beta k kr;
potential = 1/2*k*U1^2+1/2*k*U2^2 +1/2*kr*((U1-2*U2)/L)^2-P*L*(1 - (1-((U1-U2)/L)^2/2) + 1 - (1-(U2/L)^2/2));
Dpotential_U1 = diff(potential,U1);
Dpotential_U2 = diff(potential,U2);

pretty(simple(Dpotential_U1))
pretty(simple(Dpotential_U2))