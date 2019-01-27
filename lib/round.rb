class Round
  attr_accessor :deck, :turns_array, :turn_counter, :number_correct, :percent_correct

  def initialize(deck)
    @deck = deck
    @turns_array = []
    @turn_counter = 0
    @number_correct = 0
    @percent_correct = 0
  end

  def current_card
    deck.cards[turn_counter]
  end

  def take_turn(user_guess)
    turn = Turn.new(user_guess, current_card)
    if user_guess == deck.cards[turn_counter].answer
      @number_correct += 1
    end
    @turns_array << turn
    @turn_counter += 1
    return turn
  end

  def percent_correct
    if @turns_array.count == 0
      return 0
    end
    @number_correct / @turns_array.count.to_f * 100
  end

  def number_correct_by_category(check_category)
    check_category_array = turns_array.find_all do |turn|
      turn.card.category == check_category && turn.correct? == true
    end
    return check_category_array.count
  end


  def percent_correct_by_category(check_category)
    check_category_array = turns_array.find_all do |turn|
      turn.card.category == check_category
    end
    return number_correct_by_category(check_category) / check_category_array.count.to_f * 100
  end


end
