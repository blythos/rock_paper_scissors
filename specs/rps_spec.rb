require('minitest/autorun')
require('minitest/rg')
require_relative('../models/rps.rb')

class TestRps < MiniTest::Test

  def setup()
    @game1 = Rps.new("Scissors", "Paper")
    @game2 = Rps.new("Rock", "Scissors")
    @game3 = Rps.new("Rock", "Rock")
    @game4 = Rps.new("Paper", "Rock")
    @game5 = Rps.new("Scissors", "Rock")
    @game6 = Rps.new("Paper", "Scissors")
    @game7 = Rps.new("Rock", "Paper")
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
