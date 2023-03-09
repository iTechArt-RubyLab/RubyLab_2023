require 'prime'
p Prime.each(1_000_000).select { |x|
    (1..x.digits.size).all? { |y| x.to_s.chars.rotate(y).join.to_i.prime?} }.size
