require 'prime'

prime_count = 0
(0..2_000_000).each do |x|
  prime_count += 1 if x.prime?


end

p Prime.first(prime_count).sum
