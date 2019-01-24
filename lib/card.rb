class Card
  attr_accessor :question, :answer, :category

  def initialize(question, answer, category)
    @question = question
    @answer = answer
    @category = category
  end
end

class Turn
  attr_accessor :guess, :card_info

  def initialize(guess, card_info)
    @guess = guess
    @card_name = card_info
  end

  def guess
    return guess
  end

  def card
    return card_info
  end

  def correct?
    if guess == answer
      true
    end
  end

  def feedback
    if correct? = true
      puts "Correct!"
    else
      puts "Incorrect."
    end
  end
end
