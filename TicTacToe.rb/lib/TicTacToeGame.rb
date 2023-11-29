# TicTacToeGame Class
#
# Description: This class represents a simple Tic Tac Toe game. It includes methods for initializing the game, switching players,
# displaying the board, making moves, validating moves, getting player input, counting turns,
# playing the game, taking turns, determining the current player, and checking for a win.
#
# Authors: Ben Brindley, Josh Boyle
# Date: Mon 27 Nov 2023 06:41:44 PM MDT

class TicTacToeGame

    #initializes the Tic Tac Toe game with an empty board and sets the current player to "X".
    def initialize 
        @board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
        @current_player = "X"
        @winning_positions = [
          [0, 1, 2], [3, 4, 5], [6, 7, 8],
          [0, 3, 6], [1, 4, 7], [2, 5, 8],
          [0, 4, 8], [2, 4, 6]
        ]
    end

    #switches the current player between "X" and "O".
    def switch_players
        if @current_player == "X"
           @current_player = "O"
        else
            @current_player = "X"
        end
    end

    #displays the current state of the Tic Tac Toe board.
    def display_board
        puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
        puts "-----------"
        puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
        puts "-----------"
        puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
    end

    #makes a move on the board at the specified index if the move is valid.
    #
    #parameters -
    #index (Integer), the index on the board where the move is to be made.
    #
    #returns - (void)
    def make_move(index)
        if valid_move?(index)
            @board[index] = @current_player
        end
    end

    #checks if a move at the specified index is valid.
    #
    #parameters -
    #index (Integer), the index on the board to check for a valid move.
    #
    #returns - (Boolean) true if the move is valid, false otherwise.
    def valid_move?(index)
        if @board[index] == " " && index.between?(0,8) == true
            return true
        end
        false
    end

    #gets player input for the next move.
    #
    #returns - (Integer) The player's move as an index on the board.
    def get_move
        display_board
        puts "Player: "+ @current_player + ". Select a space [0-9]"
        gets.chomp.to_i-1
    end

    #counts the number of turns that have been played.
    #
    #returns - (Integer) The number of turns played.
    def turn_count
        counter = 0
        for i in @board
            if i == "X" || i == "O"
                counter += 1
            end
        end
        counter
    end

    #plays the Tic Tac Toe game and takes turns until the game is complete.
    #
    #returns - (void)
    def play
        num_turns = 0
        while num_turns < 9
            take_turn
            num_turns += 1
        end
    end

    #executes a single turn of the game, making a move and switching players.
    #this method internally calls `make_move` and `switch_players`.
    #returns - (void)
    
    def take_turn
        make_move(get_move)
        switch_players
    #     check win conditions
    end
    
    #determines the current player based on the turn count.
    #
    #returns - (String) The current player ("X" or "O").
    def current_player
        current = turn_count
        if current % 2 == 0
            "X"
        else
            "O"
        end
    end

    def won?
        @winning_positions.any? do |a, b, c|
            if @board[a] == @board[b] && @board[b] == @board[c] && @board[a] != " "
                @winning_line = [a, b, c]
                return true
            end
        end
        false
    end

    def draw?

    end

    #determines if the board is full
    #
    #returns - (Boolean)
    def full?
        @board.all? { || }

    end

    def over?

    end

    def winner?

    end
end

# Checks if this is the primary file being run
# Stops the tests from running it
if __FILE__ == $0
    game = TicTacToeGame.new
    game.play
end

