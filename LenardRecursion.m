clear
%% Programa para ver la jerarquía de ecuaciones diferenciales asociadas a
%% una ecuación de evolución bi-hamiltoniana.
%% Indicación: Una ecuación de la forma u_t = P(x,u,u_x,...,u_x...x),
%% con derivadas respecto x de orden n. La escribimos en su forma
%% bi-Hamiltoniana, u_t = D_0 \delta(H_1) = D_1 \delta(H_0) 

%Definiendo los elementos de J^\infty
syms x
n = input('Ingrese el orden de la ecuación:\n n = ');
%%% La idea sería hacer una cantidad finita de syms para ecuaciones de orden mayor
syms u0 u1 u2 u3 u4 u5 u6 u7 u8 u9 u10 u11 u12 u13 u14 u15 u16 u17 u18 u19 u20 u21 u22 u23 u24 u25 %% Al hacer esto no podremos trabajar con derivadas de orden mayor a 25.
%% Ej:
kdv = 6*u0*u1+u3;