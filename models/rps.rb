class Rps

  def initialize(hand1, hand2)
    @hand1 = hand1.downcase()
    @hand2 = hand2.downcase()
  end

  def play()
    if @hand1 == @hand2
      return "tie"
    end

  end

end
