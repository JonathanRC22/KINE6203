% Assingment Two: Tic Tac Toe
% Jonathan Cortez
% This code will play tic tac toe with a user

% This code is not reflective of my work ethic and desire to learn. I did
% struggle mightly during the course of the past few weeks doing this
% assignment. However I refused to ask for help as I have never enjoyed
% needing help. I did what I could. I know that this is a dissapointing
% code and I know I need to do better, and I will. I will begin to ask for
% help when I need to and I will use this as motivation to do better.
% Thank you - Jonathan

%Ask user if they would like to play a game
wouldYouLikeToPlayaGame = input('Would you like to play a game?(Yes or No?)',"s");

%if yes...
    if(wouldYouLikeToPlayaGame == "Yes")
%Display gameboard    
    board = [1 2 3; 4 5 6; 7 8 9];
    disp(board)
    end
%prompt user to move
while userMove == input('Pick a number to move', "s")
    if userMove == "1"
    board(1,1) = "X"; 
    disp(board)
    elseif userMove == "2"
    board(1,2) = "X";
    disp(board)
    elseif userMove == "3"
    board(1,3) = "X";   
    disp(board)
    elseif userMove == "4"
    board(2,1) = "X";
    disp(board)
    elseif userMove == "5"
    board(2,2) = "X";
    disp(board)
    elseif userMove == "6"
    board(2,3) = "X";    
    disp(board)
    elseif userMove == "7"
    board(3,1) = "X";
    disp(board)
    elseif userMove == "8"
    board(3,2) = "X";
    disp(board)
    elseif userMove == "9"
    board(3,3) = "X";    
    disp(board)
    end 
end 
disp("My Turn")
for userMove = "1"
    computerMove = "5";
    board(2,2)="0";
    disp(board)
end
    for userMove = input('Pick a number to move', "s") %if they pick 2 
        if userMove == "2"
        board(1,2) = "X";
        disp(board)
        disp("My Turn")
        computerMove = "3";
        board(1,3) = "0";
        disp(board)
        end 
            for userMove = input('Pick a number to move', "s")
                if userMove == "7"
                   board(3,1) = "X";
                   disp(board)
                   disp("My Turn")
                   computerMove = "4";
                   board(2,1) = "0";
                   disp(board)
                   end
                    for userMove = input('Pick a number to move', "s")
                        if userMove == "6"
                        board(2,3) = "X";
                        disp(board)
                        disp("My Turn")
                        computerMove = "9";
                        board(3,3) = "0";
                        disp(board)
                        for userMove = input('Pick a number to move', "s")
                            if userMove == "8"
                                board(3,2) = "X";
                                disp(board)
                                fprintf("Game Over, It's A Tie!!!")
                            end
                            playAgain = input('Would you like to play again?(Yes or No?)',"s");
                            if playAgain == "Yes"
                                restart(TicTacToe)
                            else
                                fprint("Scrub")
                            end
                        end
                        end
                    end
            end
    end
    for userMove = input('Pick a number to move', "s") %if they pick 3
        if userMove == "3"
            board(1,3) = "X";
            disp(board);
            disp("My Turn")
            computerMove = "2";
            board(1,2) = "0";
            disp(board)
        end
            for userMove = input('Pick a number to move', "s")
                if userMove == "8"
                board(3,2) = "X";
                disp(board)
                disp("My Turn")
                computerMove = "7";
                board(3,1) = "0";
                disp(board)
                end 
                for userMove = input('Pick a number to move', "s")
                    if userMove == "9"
                        board(3,3) = "X";
                        disp(board)
                        disp("My Turn")
                        computerMove = "6";
                        board(2,3) = "0";
                        disp(board)
                    end
                        for userMove = input('Pick a number to move', "s")
                            if userMove == "4"
                                board(2,1) = "X";
                                disp(board)
                                fprintf("Game Over, It's A Tie!!!")
                            end
                            playAgain = input('Would you like to play again?(Yes or No?)',"s");
                            if playAgain == "Yes"
                                restart(TicTacToe)
                            else
                                fprint("Scrub")
                            end
                        end
                end
            end
    end
    for userMove = input('Pick a number to move', "s") % if they pick 4
        if userMove == "4"
            board(2,1) = "X";
            disp(board);
            disp("My Turn")
            computerMove = "7";
            board(3,1) = "0";
            disp(board)
        end
            for userMove = input('Pick a number to move', "s")
                if userMove == "3"
                board(1,3) = "X";
                disp(board)
                disp("My Turn")
                computerMove = "2";
                board(1,2) = "0";
                disp(board)
                end 
                for userMove = input('Pick a number to move', "s")
                    if userMove == "8"
                        board(3,2) = "X";
                        disp(board)
                        disp("My Turn")
                        computerMove = "6";
                        board(2,3) = "0";
                        disp(board)
                    end
                        for userMove = input('Pick a number to move', "s")
                            if userMove == "9"
                                board(3,3) = "X";
                                disp(board)
                                fprintf("Game Over, It's A Tie!!!")
                            end
                            playAgain = input('Would you like to play again?(Yes or No?)',"s");
                            if playAgain == "Yes"
                                restart(TicTacToe)
                            else
                                fprint("Scrub")
                            end
                        end
                end
            end
    end
    for userMove = input('Pick a number to move', "s") % if they pick 6
        if userMove == "6"
            board(2,3) = "X";
            disp(board);
            disp("My Turn")
            computerMove = "3";
            board(1,3) = "0";
            disp(board)
        end
            for userMove = input('Pick a number to move', "s")
                if userMove == "7"
                board(3,1) = "X";
                disp(board)
                disp("My Turn")
                computerMove = "4";
                board(2,1) = "0";
                disp(board)
                end 
                for userMove = input('Pick a number to move', "s")
                    if userMove == "9"
                        board(3,3) = "X";
                        disp(board)
                        disp("My Turn")
                        computerMove = "8";
                        board(3,2) = "0";
                        disp(board)
                    end
                        for userMove = input('Pick a number to move', "s")
                            if userMove == "2"
                                board(1,2) = "X";
                                disp(board)
                                fprintf("Game Over, It's A Tie!!!")
                            end
                            playAgain = input('Would you like to play again?(Yes or No?)',"s");
                            if playAgain == "Yes"
                                restart(TicTacToe)
                            else
                                fprint("Scrub")
                            end
                        end
                end
            end
    end
    for userMove = input('Pick a number to move', "s") %if they pick 7
                if userMove == "7"
                board(3,1) = "X";
                disp(board)
                disp("My Turn")
                computerMove = "4";
                board(2,1) = "0";
                disp(board)
                end 
                for userMove = input('Pick a number to move', "s")
                    if userMove == "6"
                        board(2,3) = "X";
                        disp(board)
                        disp("My Turn")
                        computerMove = "8";
                        board(3,2) = "0";
                        disp(board)
                    end
                    for userMove = input('Pick a number to move', "s")
                        if userMove == "2"
                        board(1,2) = "X";
                        disp(board)
                        disp("My Turn")
                        computerMove = "3";
                        board(1,3) = "0";
                        disp(board)
                        end 
                        for userMove = input('Pick a number to move', "s")
                            if userMove == "9"
                                board(3,3) = "X";
                                disp(board)
                                fprintf("Game Over, It's A Tie!!!")
                            end
                            playAgain = input('Would you like to play again?(Yes or No?)',"s"); 
                            if playAgain == "Yes"
                                restart(TicTacToe)
                            else
                                fprint("Scrub")
                            end
                        end
                    end
                end
    end
    for userMove = input('Pick a number to move', "s") %if they pick 8
                if userMove == "8"
                board(3,2) = "X";
                disp(board)
                disp("My Turn")
                computerMove = "7";
                board(3,1) = "0";
                disp(board)
                end 
                for userMove = input('Pick a number to move', "s")
                    if userMove == "3"
                        board(1,3) = "X";
                        disp(board)
                        disp("My Turn")
                        computerMove = "2";
                        board(1,2) = "0";
                        disp(board)
                    end
                    for userMove = input('Pick a number to move', "s")
                        if userMove == "9"
                        board(3,3) = "X";
                        disp(board)
                        disp("My Turn")
                        computerMove = "6";
                        board(2,3) = "0";
                        disp(board)
                        end 
                        for userMove = input('Pick a number to move', "s")
                            if userMove == "4"
                                board(2,1) = "X";
                                disp(board)
                                fprintf("Game Over, It's A Tie!!!")
                            end
                            playAgain = input('Would you like to play again?(Yes or No?)',"s"); 
                            if playAgain == "Yes"
                                restart(TicTacToe)
                            else
                                fprint("Scrub")
                            end 
                        end
                    end
                end
    end
    for userMove = input('Pick a number to move', "s") %if they pick 9
                if userMove == "9"
                board(3,3) = "X";
                disp(board)
                disp("My Turn")
                computerMove = "2";
                board(1,2) = "0";
                disp(board)
                end 
                for userMove = input('Pick a number to move', "s")
                    if userMove == "8"
                        board(3,2) = "X";
                        disp(board)
                        disp("My Turn")
                        computerMove = "7";
                        board(3,1) = "0";
                        disp(board)
                    end
                    for userMove = input('Pick a number to move', "s")
                        if userMove == "3"
                        board(1,3) = "X";
                        disp(board)
                        disp("My Turn")
                        computerMove = "6";
                        board(2,3) = "0";
                        disp(board)
                        end 
                        for userMove = input('Pick a number to move', "s")
                            if userMove == "4"
                                board(2,1) = "X";
                                disp(board)
                                fprintf("Game Over, It's A Tie!!!")
                            end
                            playAgain = input('Would you like to play again?(Yes or No?)',"s"); 
                            if playAgain == "Yes"
                                restart(TicTacToe)
                            else
                                fprint("Scrub")
                            end 
                        end
                    end
                end
    end
if(wouldYouLikeToPlayaGame == "No")
    fprintf("ok") 
end 