LIMIT = 4_000_000

limit_exceed = false
arr = [1, 2]
first_num, second_num = arr
while !limit_exceed do
  first_num, second_num = second_num, first_num + second_num
  limit_exceed = true if second_num >= LIMIT
  arr << second_num
end
p arr.select {|num|  num.even?}.sum

