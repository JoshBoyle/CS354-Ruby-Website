class TicTacToeGame
    def initialize 
        @board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
        @current_player = "X"
        @winning_positions = [
          [0, 1, 2], [3, 4, 5], [6, 7, 8],
          [0, 3, 6], [1, 4, 7], [2, 5, 8],
          [0, 4, 8], [2, 4, 6]
        ]
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
            return true
        end
        false
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
        num_turns = 0
        while num_turns < 9
            take_turn
            num_turns += 1
        end
    end

    def take_turn
        make_move(get_move)
        switch_players
    #     check win conditions
    end
    
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

    def full?

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

