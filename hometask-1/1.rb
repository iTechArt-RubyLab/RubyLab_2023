p (1...1000).select { |number| (number % 3).zero? || (number % 5).zero?}.sum


