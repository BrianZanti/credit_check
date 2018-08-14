require 'pry'

def convert_to_int
  card_number = "5541808923795240"

  digits = card_number.chars

  integers = []

  digits.each do |digit|
    # integers.push digit.to_i
    integers << digit.to_i
  end
end

doubled = []

integers.each do |integer|
  doubled << integer * 2
end

p doubled



# Your Luhn Algorithm Here

# Output
## If it is valid, print "The number [card number] is valid!"
## If it is invalid, print "The number [card number] is invalid!"
