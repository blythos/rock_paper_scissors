require('minitest/autorun')
require('minitest/rg')
require_relative('../models/Game.rb')

class TestGame < MiniTest::Test

  def setup()
    @game1 = Game.new("Scissors", "Paper")
    @game2 = Game.new("Rock", "Scissors")
    @game3 = Game.new("Rock", "Rock")
    @game4 = Game.new("Paper", "Rock")
    @game5 = Game.new("Scissors", "Rock")
    @game6 = Game.new("Paper", "Scissors")
    @game7 = Game.new("Rock", "Paper")
  end

  def test_player1_rock_wins()
    assert_equal("rock", @game2.play())
  end

  def test_player1_draws()
    assert_equal("tie", @game3.play())
  end

  def test_player1_scissors_wins()
    assert_equal("scissors", @game1.play())
  end

  def test_player1_paper_wins()
    assert_equal("paper", @game4.play())
  end

  def test_player2_rock_wins()
    assert_equal("rock", @game5.play())
  end

  def test_player2_scissors_wins()
    assert_equal("scissors", @game6.play())
  end

  def test_player_2_paper_wins()
    assert_equal("paper", @game7.play())
  end
end
