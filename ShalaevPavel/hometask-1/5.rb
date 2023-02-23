from_1_to_10 = 2520
def is_divisible(n)
  for i in 11..20
    if n % i != 0
      return false
    end
  end
  true
end

until is_divisible(from_1_to_10)
  from_1_to_10 += 1
end

puts from_1_to_10

