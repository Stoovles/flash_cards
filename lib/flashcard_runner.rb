require './deck.rb'
require './card.rb'
require './round.rb'
require './turn.rb'

card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
deck = Deck.new([card_1, card_2, card_3])
round = Round.new(deck)

puts "Welcome! You're playing with #{deck.cards.count} cards."
puts "-------------------------------------------------"
deck.cards.count.times do |card_turn|
  puts "This is card number #{round.turn_counter + 1} out of #{deck.cards.count}."
  puts "Question: #{round.current_card.question}"
  temp_answer = gets.chomp
  new_turn = round.take_turn(temp_answer)
  puts round.turns_array.last.feedback
  puts ""
end
puts "****** Game over! ******"
puts "You had #{round.number_correct} correct guesses out of #{deck.cards.count} for a total score of #{round.percent_correct}%."
round.array_of_categories.each do |unique_category|
  puts "#{unique_category.card.category} : #{round.percent_correct_by_category(unique_category.card.category)}% correct"
end
