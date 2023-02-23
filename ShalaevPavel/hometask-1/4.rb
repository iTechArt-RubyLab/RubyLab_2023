def is_palindrome(n)
  n.to_s == n.to_s.reverse
end

max_palindrome = 0

for i in 100..999
  for j in 100..999
    if is_palindrome(i * j) and i * j > max_palindrome
      max_palindrome = i * j
    end
  end
end

puts max_palindrome