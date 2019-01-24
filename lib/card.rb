class Card
  attr_accessor :question, :answer, :category
  def initialize(question, answer, category)
    @question = question
    @answer = answer
    @category = category
  end

  def ask_question
    puts question
  end

  def take_user_answer_and_check
    user_answer = gets.chomp
    if user_answer == answer
      "That's correct!"
      num_correct =+ 1
    else
      "That's incorrect."
      num_incorrect =+ 1
    end
  end
end
