# blackjack_score.rb
require "awesome_print"

VALID_CARDS = [1, 2, 3, 4, 5, 6, 7, 8, 9, 'King', 'Queen', 'Jack', 'Ace']
FACE_CARDS = ['King', 'Queen', 'Jack']
def blackjack_score(hand)

  # check for invalid cards or quantities of cards
  if hand.count > 5 || hand.count < 2
    raise ArgumentError, 'Invalid number of cards in hand'
  elsif !((hand.uniq - VALID_CARDS.uniq).empty?)
    raise ArgumentError, 'Invalid card in hand'
  end
  # determine card values to sum
  math_hand = []
  hand.each do |card|
    if card.is_a? Integer
      math_hand << card
    elsif FACE_CARDS.include?(card)
      math_hand << 10
    elsif card == 'Ace'
      math_hand << 1
    end
  end
 
  # sum cards
  math_hand << 10 if hand.include?('Ace') && math_hand.sum <=11
  
  puts 'Bust' if math_hand.sum > 21
  
  return math_hand.sum
end