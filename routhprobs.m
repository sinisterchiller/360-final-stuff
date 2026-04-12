clear
clc

syms k s

g = k/(s*(s + 3)*(s^2 + 2*s + 2));
pretty(g)

step1 = simplify(1 + g);
pretty(step1)

[num, den] = numden(step1);
step2 = expand(num);
pretty(step2)

% Routh Table
R = sym(zeros(5,3));
R(1,:) = [1 2 3];
R(2,:) = [1 2 15];

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

R(5,1) = routh(R, 5, 1);
R(5,2) = routh(R, 5, 2);

R(6,1) = routh(R, 6, 1);
R(6,2) = routh(R, 6, 2);

pretty(R)