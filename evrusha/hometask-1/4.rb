p [*100..999].repeated_combination(2).map { _1 * _2 }.select { _1 == _1.to_s.reverse.to_i }.max
