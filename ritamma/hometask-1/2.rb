f = [0, 1]
while f[-1] <= 4000000
  x = f[-1] + f[-2]
  f << x
end
p f.select(&:even?).sum
