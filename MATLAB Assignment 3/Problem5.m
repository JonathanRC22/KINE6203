function [T] = Problem5(A)
% This function will take a 3 number array and return a logical value of
% true (1) or false (0) indicating if the array represents a real triangle
A = sort(A);
if A(1) + A(2) > A(3)
    T = 1;
elseif A(1) + A(2) < A(3)
    T = 0;
end 