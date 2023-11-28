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

    def display_board
        puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
        puts "-----------"
        puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
        puts "-----------"
        puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
    end

    def make_move(index)
        if valid_move?(index)
        @board[index] = @current_player
    end
    end

    def valid_move?(index)
        if @board[index] == " " && index.between?(0,8) == true
        end
    end

    def get_move
        display_board
        puts "Player: "+ @current_player + ". Select a space [0-9]"
        gets.chomp.to_i-1
    end

    def turn_count
        counter = 0
        for i in @board
            if i == "X" || i == "O"
                counter += 1
            end
        end
        counter
    end

    def play
        initialize
        while (i = 0); i < 9
            take_turn
        end
    end

    def take_turn
        make_move(get_move)
    #     check win conditions
    end

    winning_positions = [
        [0, 1, 2], [3, 4, 5], [6, 7, 8],
        [0, 3, 6], [1, 4, 7], [2, 5, 8],
        [0, 4, 8], [2, 4, 6]
    ]
    
    def current_player
        current = turn_count
        if current % 2 == 0
            return "X"
        else
            return "Y"
        end
    end

    def winner?
        winning_position.any? do |a, b, c|
            if @board[a] == @board[b] && @board[b] == @board[c] && @board[a] != " "
                @winning_line = [a, b, c]
                return true
            end
        end
        false
    end

    def draw?

    end

    def full? 

    end

    def over?

    end
end

