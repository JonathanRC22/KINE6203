function [subIDInc] = dayComparer(SubjectID, DayA, DayB)
% This function will outline what subjects improved from one day to the
% othere, regardess of what actual days are used.

Improvement = DayB>DayA;
% If Day B is greater than DayA, it does not matter which day is which.
% Subjects that improved from one day to the subsequent day, it will be
% outlined here
subIDInc = SubjectID(Improvement);
% This will show which subjects improved from Day1 to Day2 or from Day2 to
% Day3
end 