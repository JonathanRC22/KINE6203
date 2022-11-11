function [maleIsoIndMeans, femaleIsoIndMeans, maleGroupIsoMean, femaleGroupIsoMean] = genderIsoCalc(Gender, Day1, Day2, Day3)
% This function will take four inputs (Gender, Day1, Day2, and Day3) and return four outputs: a
% matrix with with mean individual isometric strength (one each for M and
% F) and two sets of the mean of the means (one each for M and F). 

for i = 1:length(Gender)
    if Gender(i) == 'M' 
    maleMean = (Day1+Day2+Day3)/3;
    end
for j = 1:length(Gender)
    if Gender(j) == 'F' 
    femaleMean = (Day1+Day2+Day3)/3;
    end
end 
end 
maleIsoIndMeans = mean(maleMean);
femaleIsoIndMeans = mean(femaleMean);
maleGroupIsoMean = mean(maleIsoIndMeans);
femaleGroupIsoMean = mean(femaleIsoIndMeans);