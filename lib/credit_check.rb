require 'pry'

def double_it
  digits = get_digits("5541808923795240")
  doubles_digits(digits)
end

def get_digits(card_number_string)
  digits = card_number_string.chars

  integers = []

  digits.each do |digit|
    # integers.push digit.to_i
    integers << digit.to_i
  end

  return integers
end

def doubles_digits(card_number_digits)
  doubled = []

  card_number_digits.each do |integer|
    doubled << integer * 2
  end

  p doubled
end

double_it

# doubles_card_number("5541808923795240")

# card_number = "5541808923795240"





# Your Luhn Algorithm Here

# Output
## If it is valid, print "The number [card number] is valid!"
## If it is invalid, print "The number [card number] is invalid!"
