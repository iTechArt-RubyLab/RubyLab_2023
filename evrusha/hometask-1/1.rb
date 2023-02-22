p (1...1000).select { (_1 % 3).zero? || (_1 % 5).zero? }.sum
