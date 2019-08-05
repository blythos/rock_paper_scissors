require('minitest/autorun')
require('minitest/rg')
require_relative('../models/rps.rb')

class TestRps < MiniTest::Test

  def setup()
    @game1 = Rps.new("Rock", "Paper")
    @game2 = Rps.new("Rock", "Scissors")
    @game3 = Rps.new("Rock", "Rock")
  end

  def test_player1_rock_wins()
    assert_equal("rock", @game2.play())
  end

  def test_player1_draws()
    assert_equal("tie", @game3.play())
  end


end
