require("pry-byebug")
require("minitest/autorun")

require_relative("../models/game.rb")

class TestGame < Minitest::Test

  def setup

    @game1 = Game.new("rock", "rock")
    @game2 = Game.new("paper", "paper")
    @game3 = Game.new("scissors", "scissors")
    @game4 = Game.new("rock", "scissors")
    @game5 = Game.new("rock", "paper")
    @game6 = Game.new("scissors", "paper")
    @game7 = Game.new("scissors", "rock")
    @game8 = Game.new("paper", "rock")
    @game9 = Game.new("paper", "scissors")



  end

  def test_winner__draw
    assert_equal("Draw!", @game1.winner())
    assert_equal("Draw!", @game2.winner())
    assert_equal("Draw!", @game3.winner())
  end

  def test_winner__player1_rock_wins
    assert_equal("rock wins!", @game4.winner)
  end

  def test_winner__player1_rock_loses
    assert_equal("paper wins!", @game5.winner)
  end

  def test_winner__player1_scissors_wins
    assert_equal("scissors wins!", @game6.winner)
  end

  def test_winner__player1_scissors_loses
    assert_equal("rock wins!", @game7.winner) 
  end

  def test_winner__player1_paper_wins
    assert_equal("paper wins!", @game8.winner)
  end

  def test_winner__player1_scissors_loses
    assert_equal("scissors wins!", @game9.winner)
  end

end
