require 'pry'

card_number = "5541808923795240"
digits = card_number.chars
integers = []
digits.each do |digit|
  # integers.push digit.to_i
  integers << digit.to_i
end

doubled = []
integers.each.with_index do |integer, index|
  if index.even?
    doubled << integer * 2
  else
    doubled << integer
  end
end

summed_over_ten = []
doubled.each do |digit|
  if digit > 9
    summed_over_ten << digit - 9
  else
    summed_over_ten << digit
  end
end

sum = 0
summed_over_ten.each do |digit|
  sum += digit
end

if sum % 10 == 0
  puts "the card #{card_number} is valid"
else
  puts "the card #{card_number} is invalid"
end

# Your Luhn Algorithm Here

# Output
## If it is valid, print "The number [card number] is valid!"
## If it is invalid, print "The number [card number] is invalid!"
