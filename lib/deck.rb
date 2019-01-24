class Deck
  attr_accessor :cards

  def initialize(cards)
    @cards = cards
  end

  def card_count
    return cards.count
  end

  def cards_in_category(category)
    cards.find_all {|card_category| card_category.include?(category)}
  end
end
