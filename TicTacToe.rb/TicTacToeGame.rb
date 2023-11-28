class TicTacToeGame
    def initialize 
        @board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
        @current_player = "X"
    end

    def switch_players
        if @current_player == "X"
           @current_player = "O"
        else
            @current_player = "X"
        end
    end

    def display_board(board)
        puts " #{board[0]} | #{board[1]} | #{board[2]} "
        puts "-----------"
        puts " #{board[3]} | #{board[4]} | #{board[5]} "
        puts "-----------"
        puts " #{board[6]} | #{board[7]} | #{board[8]} "
    end

    def make_move(board, index)
        @board[index] = @current_player
    end
    def valid_move?(board, index)
        if board[index] == " " && index.between?(0,8) == true
        end
    end

    def get_move
        display_board
        puts "Player: "+ @current_player + ". Select a space [0-9]"
        gets.chomp.to_i-1
    end

    def turn_count(board)
        counter = 0
        for i in board
            if i == "X" || i == "O"
                counter += 1
            end
        end
        return counter
    end

    winning_positions [
        [0, 1, 2], [3, 4, 5], [6, 7, 8],
        [0, 3, 6], [1, 4, 7], [2, 5, 8],
        [0, 4, 8], [2, 4, 6]
    ]
    
    def current_player(board)
        current = turn(board)
        if current % 2 == 0
            return "X"
        else
            return "Y"
        end
    end
end