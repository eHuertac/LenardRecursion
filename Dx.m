function [ N, EXPR ] = Dx(m, n, expr )
%DerivadaTotal Definición del operador "Derivada total"y su "inversa"
%   Dx := dx + u1 du0 + u2 du1 + u3 du2 + ...
    N = n;
    EXPR = expr;
    while(m > 0)
        n = N;
        expr = EXPR;  %%Truco para no perder el valor de EXPR y N(si m!=1)
        EXPR = diff(expr,'x') + diff(expr,'u0');     %% Dx := dx + u1 du0 + <- derivando parcial respecto a x
        N = n+1;
        while(n~=0) 
            EXPR = EXPR + sym(strcat('u',int2str(n+1)))*diff(expr,strcat('u',int2str(n)));
            n = n - 1; 
        end
        m = m - 1; % m es cuántas veces aplicar Dx
    end
    while(m < 0) %%Aquí está la importancia matemática de que el sistema sea integrable, sino no funciona el algoritmo. 
        n = N; 
        expr = EXPR;
        N = n-1;
        
        while(n ~= 0)
            EXPR = int(expr)
    end
        
end