# spec/tic_tac_toe_spec.rb
require_relative '../lib/TicTacToeGame'

RSpec.describe TicTacToeGame do
  let(:game) { TicTacToeGame.new }

  describe '#initialize' do
    it 'sets up a new game with an empty board and current player X' do
      expect(game.instance_variable_get(:@board)).to eq([" ", " ", " ", " ", " ", " ", " ", " ", " "])
      expect(game.instance_variable_get(:@current_player)).to eq("X")
    end
  end

  describe '#switch_players' do
    it 'switches the current player from X to O' do
      game.switch_players
      expect(game.instance_variable_get(:@current_player)).to eq("O")
    end

    it 'switches the current player twice from X to O to X' do
      game.switch_players
      game.switch_players
      expect(game.instance_variable_get(:@current_player)).to eq("X")
    end
  end

  describe '#valid_move?' do
    it 'should return true for all spaces' do
      (0..8).each { |i|
        expect(game.valid_move?(i)).to eq true
      }
      end
  end

  describe '#display_board' do
    it 'should display the board with no moves' do
      expect { game.display_board }.to output("   |   |   \n-----------\n   |   |   \n-----------\n   |   |   \n").to_stdout
    end
  end

  describe '#make_move' do
    it 'should place an X at index 0' do
      game.make_move(0)
      expect { game.display_board }.to output(" X |   |   \n-----------\n   |   |   \n-----------\n   |   |   \n").to_stdout
    end

    it 'should place an O at index 4 after an X at 0' do
      game.make_move(0)
      game.switch_players
      game.make_move(4)
      expect { game.display_board }.to output(" X |   |   \n-----------\n   | O |   \n-----------\n   |   |   \n").to_stdout
    end
  end

  describe '#turn_count' do
    it 'should return 0 with no moves played' do
      expect(game.turn_count).to eq 0
    end

    it 'should return 1 with one move played' do
      game.make_move(0)
      expect(game.turn_count).to eq 1
    end
  end

  describe '#current_player' do
    it 'should return X with no moves' do
      expect(game.current_player).to eq("X")
    end

    it 'should return O with one move' do
      game.make_move(0)
      expect(game.current_player).to eq("O")
    end
  end

  describe '#won?' do
    it 'should return false on no moves' do
      expect(game.won?).to eq false
    end

    it 'should return true on a winning combo' do
      (0..2).each {|i|
        game.make_move(i)
      }
      expect(game.won?).to eq true
    end
  end

  describe '#full?' do
    it 'should return false on a non full board' do
      game.make_move(0)
      expect(game.full?).to eq false
    end

    it 'should return true if full' do
      (0..8).each { |i|
        game.make_move(i)
      }
      expect(game.full?).to eq true
    end
  end

  describe '#draw?' do
    it 'should return false on board not full and no win' do
      game.make_move(0)
      expect(game.draw?).to eq false
    end

    it 'should return false for board full and win' do
      (0..8).each { |i|
        game.make_move(i)
      }
      expect(game.draw?).to eq false
    end

    it 'should return false for board not full and win' do
      (0..2).each {|i|
        game.make_move(i)
      }
      expect(game.draw?).to eq false
    end

    it 'should return true for board full and no win' do
      game.make_move(0)
      game.make_move(1)
      game.make_move(5)
      game.make_move(6)
      game.make_move(7)
      game.switch_players
      game.make_move(2)
      game.make_move(3)
      game.make_move(4)
      game.make_move(8)
      expect(game.draw?).to eq true
    end

  end

end