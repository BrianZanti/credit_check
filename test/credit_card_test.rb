require 'minitest/autorun'
require 'minitest/pride'
require './lib/credit_card'

class CreditCardTest < Minitest::Test
  def test_check_it_exists
    credit_card = CreditCard.new("5541808923795240", 15000)
    assert_instance_of CreditCard, credit_card
  end

  def test_it_has_attributes
    credit_card = CreditCard.new("5541808923795240", 15000)
    assert_equal "5541808923795240", credit_card.card_number
    # assert_equal 15000, credit_card.limit
    # assert credit_card.card_number
  end

  def test_it_is_valid
    credit_card = CreditCard.new("5541808923795240", 15000)
    assert credit_card.is_valid?
  end

  def test_it_can_double_integers
    credit_card = CreditCard.new("5541808923795240", 15000)
    actual = credit_card.double_integers([5,5,4,1,8,0,8,9,2,3,7,9,5,2,4,0])
    # actual = credit_card.double_integers(credit_card.get_digits)
    # DONT DO THIS ^
    expected = [10,5,8,1,16,0,16,9,4,3,14,9,10,2,8,0]
    assert_equal expected, actual
  end
end
