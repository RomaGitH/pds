function [y] = sinc2(x)
    x = 2*pi*0.5*x;
    if x == 0
        y = 1;
    else
        y = sin(x) / x;
    end
endfunction
