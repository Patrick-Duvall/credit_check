
class CreditCard
  attr_reader :card_number, :limit
  def initialize(card_number, limit=0)
    @card_number = card_number
    @limit = limit
  end

  def luhn_algorithm
    digits = @card_number.to_i.digits
    digits.each_with_index.reduce(0) do |sum , pair|
      n , index = pair
      n *= 2 if index.odd?
      n = n.digits.sum if n >= 10 && index.odd?
      sum + n
    end
  end

  def check_sum
    luhn_algorithm
  end

  def is_valid?
    luhn_algorithm % 10 == 0
  end
  def last_four
    @card_number.to_i % 10000
  end

end
