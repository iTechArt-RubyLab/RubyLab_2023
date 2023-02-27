arr = [1, 2]
first_num, second_num = arr
until second_num >= 4_000_000 do
  first_num, second_num = second_num, first_num + second_num
  arr << second_num
end
p arr.select(&:even?).sum
