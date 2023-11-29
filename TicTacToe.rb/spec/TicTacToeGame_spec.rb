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

    it 'switches the current player from O to X' do
      game.switch_players
      game.switch_players
      expect(game.instance_variable_get(:@current_player)).to eq("X")
    end
  end


end