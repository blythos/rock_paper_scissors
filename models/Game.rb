class Game

  def initialize(hand1, hand2)
    @hand1 = hand1.downcase()
    @hand2 = hand2.downcase()
  end

  def play()
    if @hand1 == @hand2
      return "You both play #{@hand1}. It's a tie!"
    elsif @hand1 == "rock" && @hand2 == "scissors"
      return "You win with #{@hand1}! Computer loses with #{@hand2}."
    elsif @hand1 == "scissors" && @hand2 == "paper"
      return "You win with #{@hand1}! Computer loses with #{@hand2}"
    elsif @hand1 == "paper" && @hand2 == "rock"
      return "You win with #{@hand1}! Computer loses with #{@hand2}"
    elsif @hand2 == "rock" && @hand1 == "scissors"
      return "Computer wins with #{@hand2}! You lose with #{@hand1}"
    elsif @hand2 == "scissors" && @hand1 == "paper"
      return "Computer wins with #{@hand2}! You lose with #{@hand1}"
    elsif @hand2 == "paper" && @hand1 == "rock"
      return "Computer wins with #{@hand2}! You lose with #{@hand1}"
    end
  end

end
