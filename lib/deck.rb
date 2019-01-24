class Deck
  attr_accessor :cards, :category_array

  def initialize(cards)
    @cards = cards
    @category_array = []
  end

  def card_count
    return cards.count
  end

  def cards_in_category(check_category)
    cards.each do |card|
      require 'pry';binding.pry
      if card.category == check_category
        @category_array << card
      end
    end
  end


end
