function [Length, First, Last] = Problem9(String)
% This function will take a string and returns its length, the first and
% last characters as outputs

str = String;
Length = strlength(str);
First = str(1);
Last = str(end); 
 