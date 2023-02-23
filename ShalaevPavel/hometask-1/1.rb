def sum_of_mult(n)
  i = 3
  result = 0
  while i < n
    if i % 3 == 0 or i % 5 == 0
      result += i
    end
    i += 1
  end
  return result
end

puts sum_of_mult(1000)
