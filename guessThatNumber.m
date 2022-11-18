function guessThatNumber()  % *** WARNING: does not CONTAINS INTENTIONAL BUGS! ***
%---------------------------------------------------------------
%       USAGE: guessThatNumber() - Assignment 5
%
%        NAME: Jonathan Cortez
%
%         DUE: November 17
%
%
% DESCRIPTION: This program is supposed to allow the user to play
%              the Number Guessing Game, however, it contains bugs.
%              Your job is to find, correct, and mark the errors with
%              comments describing the bug, how you found it, 
%              and how you corrected it. Correct the bugs and submit this
%              corrected file on github. There are between 9 - 12 bugs,
%              depending on how you correct them. 
%
%      INPUTS: None
%
%     OUTPUTS: None
%
%---------------------------------------------------------------

beginner = 1;               % beginner level #
moderate = 2;               % moderate level #
advanced = 3;               % advanced level #
beginnerHighest = 10;       % highest possible number for beginner
moderateHighest = 100;      % highest possible number for moderate
advancedHighest = 1000;    % highest possible number for advanced

% clear screen and display game introduction

clc()
fprintf(['Guess That Number Game (not buggy anymore)\n\n', ...
'This program plays the game of Guess That Number in which you have to guess\n', ...
'a secret number.  After each guess you will be told whether your \n', ...
'guess is too high, too low, or correct.\n\n'])

% Get level of play (1-3) from user

fprintf('Please select one of the three levels of play:\n')
fprintf('   1) Beginner (range is 1 to %d)\n', beginnerHighest)
fprintf('   2) Moderate (range is 1 to %d)\n', moderateHighest)
fprintf('   3) Advanced (range is 1 to %d)\n', advancedHighest)

level = input('Enter level (1-3): '); 

while level ~= beginner && level ~= moderate && level ~= advanced % BUG: Any input put in will display a message that 
    % selection is not valid. I swtiched the OR operator to the AND operator to fix this bug (|| to &&)  
fprintf('Sorry, that is not a valid level selection.\n')
level = input('Please re-enter a level of play (1-3): ');
end

% set highest secret number based on level selected

if level == beginner %Bug found: I found this by trying to run the code and getting a incorrect use of '=' error message.                      

highest = beginnerHighest;

elseif level == moderate

highest = moderateHighest;

else
highest = advancedHighest; % BUG: H in "advancedHighest" was not capitilized, found when skiming through code          
end

% randomly select secret number between 1 and highest for level of play

%secretNumber = floor(rand() + 1 * highest); - BUG: This will cause the secret number to always be higher since it is being 
% mulitiplied by the highest number allowed. I replaced this with randi as it this will
% assign a truly random number between 1 and the highest number to the be the secret number

secretNumber = randi(highest);

% initialize number of guesses and User_guess

numOfTries = 0; %BUG:Set the number of user tries made to be 1 greater than it should have been
% swtiched to = 0 so number of tries variable was accurate
userGuess = 0;

% repeatedly get user's guess until the user guesses correctly

while userGuess ~= secretNumber
end % BUG: The WHILE loop is missing a corresponding END, outlined by the MATLAB editor
% get a valid guess (an integer from 1-Highest) from the user

fprintf('\nEnter a guess (1-%d): ', highest);
userGuess = input('');
while userGuess < 1 || userGuess > highest %BUG: changed >= to > so that the highest number allowed could be used as a valid guess

fprintf('Sorry, that is not a valid guess.\nRe-enter a guess (1-%d): ', highest);

userGuess = input('');

end % of guess validation loop

% add 1 to the number of guesses the user has made

numOfTries = numOfTries + 1;

% report whether the user's guess was high, low, or correct

if userGuess > secretNumber
fprintf('Sorry, %d is too low.\n', userGuess);
elseif userGuess < secretNumber % BUG: Statement was a duplicate of the previous IF statement, error was outlined by the MATLAB editor. 
    % I switched the > to a < to correct this bug
fprintf('Sorry, %d is too high.\n', userGuess);
elseif numOfTries == 1
fprintf('\nLucky You!  You got it on your first try!\n\n');
else
fprintf('\nCongratulations!  You got %d in %d tries.\n\n', ...
secretNumber, numofTries); %BUG: Code only displayed the secret number and the not the number of tries it took to guess it. Message 
% outlines both the secret number and the number of tries it took to guess
% the number so I added the numofTries to display this


fprintf('Game Over. Thanks for playing the Guess That Number game.\n\n');

end  % of guessing while loop

end %BUG: appropriate end was needed that corresponds to previous WHILE loop

% end of game