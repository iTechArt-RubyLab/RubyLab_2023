Some_const = 600851475143
#not my solution (from copilot) still working on it
def prime?(num)
  (2..Math.sqrt(num)).each do |i|
    return false if (num % i).zero?
  end
  true
end

def max_prime_factor(num)
  (2..Math.sqrt(num)).each do |i|
    return i if (num % i).zero? && prime?(i)
  end
end

puts max_prime_factor(Some_const)