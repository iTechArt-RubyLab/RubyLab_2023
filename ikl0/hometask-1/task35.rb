# frozen_string_literal: true

require 'prime'
puts Prime.each(1_000_000).select { |i|
  (1..i.to_s.length).all? do |j|
    i.to_s.split('').rotate(j).join('').to_i.prime?
  end
}.count
