require 'prime'

prime_count = 0
(0..2_000_000).each do |x|
  if x.prime?
    prime_count += 1
  end

end

p Prime.first(prime_count).sum
