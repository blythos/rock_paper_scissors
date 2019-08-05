class Rps

  def initialize(hand1, hand2)
    @hand1 = hand1.downcase()
    @hand2 = hand2.downcase()
  end

  def play()
    if @hand1 == @hand2
      return "tie"
    elsif @hand1 == "rock" && @hand2 == "scissors"
      return @hand1
    elsif @hand1 == "scissors" && @hand2 == "paper"
      return @hand1
    elsif @hand1 == "paper" && @hand2 == "rock"
      return @hand1
    elsif @hand2 == "rock" && @hand1 == "scissors"
      return @hand2
    elsif @hand2 == "scissors" && @hand1 == "paper"
      return @hand2
    elsif @hand2 == "paper" && @hand1 == "rock"
      return @hand2
    end
  end

end
