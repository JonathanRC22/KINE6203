function [Num1] = Problem3(Num2,Num3)
% This function takes two numbers as inputs and returns "Woo" if their sum
% is even or "Hah" if their sum is odd
Num1 = Num2+Num3;
if mod(Num1,2)==0
    Num1="Woo";
else mod(Num1,2)==1;
    Num1="Hah";
end