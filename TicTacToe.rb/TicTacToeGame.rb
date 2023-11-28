class TicTacToeGame
    def initialize 
        @board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
        @current_player = "X"
    end

    def input_to_index

    end

    def switch_players
        if @current_player == "X"
           @current_player = "O"
        else
            @current_player = "X"
    end
end