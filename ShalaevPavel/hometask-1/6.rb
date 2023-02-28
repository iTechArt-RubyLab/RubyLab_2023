squared_sum_of_first_100 = ((1 + 100) * 100 * 0.5) **2
p squared_sum_of_first_100 - (1..100).reduce(0) {|sum, num| sum + num **2}

