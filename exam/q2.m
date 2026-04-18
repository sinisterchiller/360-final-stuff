% s = tf('s');
% g = (10^7*s)/(s*(s + 10)*(s + 1000) + 10^7);
% rlocus(g)

syms s T
expand(s*(s + 10)*(s + 1000) + 10^7*(T*s + 1))

R = sym(zeros(4,2));
R(1,:) = [1 10000+10^7*T];
R(2,:) = [1010 10^7];

function value = routh(R,x,y)
    if ((R(x-1,1) == 0))
        value = sym('u');
        return
    end
    value = simplify((R(x-1,1)*R(x-2,y+1) - R(x-2,1)*R(x-1,y+1)) / R(x-1,1));
    if (value == 0)
        value = sym('u');
        return
    end
end

R(3,1) = routh(R, 3, 1);
R(3,2) = routh(R, 3, 2);

R(4,1) = routh(R, 4, 1);
R(4,2) = routh(R, 4, 2);

pretty(R)
