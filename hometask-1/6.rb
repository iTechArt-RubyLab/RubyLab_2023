arr = (1..100)
p arr.sum.pow(2) - arr.collect { |a| a ** 2}.sum
