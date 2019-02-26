require_relative "credit_card"

puts "What is the number of the card you would like to check?"
card_number = gets.strip

card = CreditCard.new(card_number)
status = card.is_valid?
if card.is_valid?
  puts "The number #{card.card_number} is valid!"
else
  puts "The number #{card.card_number} is invalid!"
end
