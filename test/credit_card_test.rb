require "minitest/autorun"
require "./lib/credit_card"

class CreditTest < Minitest::Test

  def test_good_card_is_valid
    visa = CreditCard.new("5541808923795240", 2000)
    assert_equal true , visa.is_valid?
  end
  def test_bad_card_doesnt_work
    visa = CreditCard.new("4024007106512380", 2000)
    assert_equal false, visa.is_valid?
  end


  def test_last_four
    visa = CreditCard.new("5541808923795240", 2000)
    assert_equal 5240 , visa.last_four
  end

  def test_card_number
    visa = CreditCard.new("5541808923795240", 2000)
    assert_equal "5541808923795240" , visa.card_number
  end

  def test_check_sum
    visa = CreditCard.new("5541808923795240", 2000)
    assert_equal 70, visa.check_sum
  end

  def test_limit
    visa = CreditCard.new("5541808923795240", 2000)
    assert_equal 2000, visa.limit
  end
  def test_it_works_for_amex
    amex = CreditCard.new("342804633855673", 2000)
    assert_equal true, amex.is_valid?
  end
  def test_bad_amex_doesnt_work
    amex = CreditCard.new("342801633855673", 2000)
    assert_equal false, amex.is_valid?
  end

end
