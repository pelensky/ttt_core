require 'game'
require 'board'
require 'perfect_computer'

RSpec.describe Game do
  let (:board) { Board.new(Array.new(9)) }
  let (:player_x) { PerfectComputer.new("X") }
  let (:player_o) { PerfectComputer.new("O") }
  subject(:game) { described_class.new(board, player_x, player_o) }

  context "At setup, the game" do

    it "is initialized with a board" do
      expect(game.board).to eq board
    end

    it "it initialized with two players" do
      expect(game.player_x).to eq player_x
      expect(game.player_o).to eq player_o
    end

    it "has a starting player of X" do
      expect(game.current_player).to eq player_x
    end

  end

  context "After a valid move" do
    it "changes the current player" do
      game.take_turn
      expect(game.current_player.marker).to eq "O"
    end
  end

  context "Game over" do
    it "is not true while game is in progress" do
      expect(game.game_over?).to be false
    end
  end

end
