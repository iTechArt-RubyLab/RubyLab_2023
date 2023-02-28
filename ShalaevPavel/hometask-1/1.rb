def sum_of_mult(n)
  i = 3
  result = 0
  while i < n

    result += i if i % 3 == 0 || i % 5 == 0
    i += 1

  end

  result
end

puts sum_of_mult(1000)
