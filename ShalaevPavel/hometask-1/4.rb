def is_palindrome(n)
  n.to_s == n.to_s.reverse
end

max_palindrome = 0

(100..999).each { |i|
  (100..999).each { |j|
    if is_palindrome(i * j) && i * j > max_palindrome
      max_palindrome = i * j
    end
  }
}

puts max_palindrome