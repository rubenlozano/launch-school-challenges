# Write a method that takes one argument, a positive integer, and returns a
# list of the digits in the number.
# All of the tests below should print true.

def digit_list(number)
  # Brute force solution:

  # digits = []
  #
  # loop do
  #   number, remainder = number.divmod(10)
  #   digits.unshift(remainder)
  #   break if number == 0
  # end
  #
  # digits

  # Idiomatic Ruby solution:
  
  # number.to_s.chars.map { |num| num.to_i }
  number.to_s.chars.map(&:to_i)
end

puts digit_list(12345) == [1, 2, 3, 4, 5]
puts digit_list(7) == [7]
puts digit_list(375290) == [3, 7, 5, 2, 9, 0]
puts digit_list(444) == [4, 4, 4]
