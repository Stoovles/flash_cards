class Turn
  attr_accessor :guess, :card

  def initialize(guess, card)
    @guess = guess
    @card = card
  end

  def user_guess
    return guess
  end

  def card_info
    return card
  end

  def correct?
    if guess == card.answer
      true
    else
      false
    end
  end

  def feedback
    if correct? == true
      return "Correct!"
    else
      return "Incorrect."
    end
  end
end
