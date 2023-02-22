p (1...1000).select { |x| (x % 3).zero? || (x % 5).zero? }.sum
