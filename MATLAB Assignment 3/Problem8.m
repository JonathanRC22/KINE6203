function Problem8(Small, Big)
% This function will take two numbers as inputs and displays a counter
% from the smaller number to the bigger number

while Small<Big
    Small= Small+1;
    pause(1)
    fprintf(Small)
end
