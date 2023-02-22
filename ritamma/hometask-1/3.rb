n = 600851475143
i = 2
while i < n
  n /= i while (n % i).zero? && n != i
  i += 1
end
p n
