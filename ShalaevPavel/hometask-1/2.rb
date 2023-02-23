first = 1
second = 2
sum_of_even = 0
while second < 4000000
  third = first + second
  first = second
  second = third
  if first % 2 == 0
    sum_of_even += first
  end

end

puts sum_of_even