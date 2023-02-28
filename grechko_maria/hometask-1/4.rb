def palindrome?(string)
  string == string.reverse
end

arr = []
999.downto(100) do |ml_1|
  999.downto(100) do |ml_2|
    number = ml_1 * ml_2
    arr << number if palindrome?(number.to_s)
  end
end
p arr.max
