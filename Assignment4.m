[SubjectID, Age, Gender, Weight, Day1, Day2, Day3] = importfile("isok_data_6803.csv");
% This function imports the data found on the isok_data_6803.csv file
% provided. The function will import the SubjectID's, ages, gender,
% weights, and three days of isokinetic strength data of all the subjects. The data
% will be imported and placed into the MATLAB workspace when the function
% is called upon.
[maleIsoIndMeans, femaleIsoIndMeans, maleGroupIsoMean, femaleGroupIsoMean] = genderIsoCalc(Gender, Day1, Day2, Day3);
% This function creates an avaerage of the the isokinetic stregtnh data
% based on gender. It also creates a further average of the gender averages
% (a mean of a mean).
[day1toDay2] = dayComparer(SubjectID, Day1, Day2);
[day2toDay3] = dayComparer(SubjectID, Day2, Day3);
% These are the outputs of the previous function, showing which subejcts
% increased from day1 to day 2 and seperately from day2 to day3
normDay1Mean = Day1/Weight;
normDay2Mean = Day2/Weight;
normDay3Mean = Day3/Weight;
% These represent the group means for each day. Dividing the days by the
% weight will normalize the data and create a mean of the day
writematrix('iso_results.csv')
