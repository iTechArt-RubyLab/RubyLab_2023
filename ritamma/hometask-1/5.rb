# First solution
n = 20
i = 1
while i < 20
  if (n % i).zero?
    i += 1
  else
    i = 1
    n += 1
  end
end
p n

# Second solution
p (1..20).inject(:lcm)
