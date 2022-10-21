function [Sum, Diff, Prod, Max] = Problem2(Num1,Num2)
% This function will take two numbers as inputs and return the sum,
% difference, product, and max of the two numbers.
while Num1>Num2
    Sum = Num1 + Num2;
    Diff = Num1 - Num2;
    Prod = Num1 * Num2;
    Max = Num1;
end 
while Num<Num2
    Sum = Num1 + Num2;
    Diff = Num2 - Num1;
    Prod = Num1 * Num2;
    Max = Num2;
end
