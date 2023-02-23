def palindrome?(string)
  true if string == string.reverse
end

def cycle
  arr = []
  (100...1000).each do |multiplier_1|
    (100...1000).each do |multilpier_2|
      number = multiplier_1 * multilpier_2
      arr << number if palindrome?(number.to_s)
    end
  end
  p arr.max
end

cycle