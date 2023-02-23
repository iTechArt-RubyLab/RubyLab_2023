# frozen_string_literal: true
p (1...1000).select { |num| (num % 3).zero? || (num % 5).zero? }.sum

