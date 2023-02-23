require 'prime'
prime = Prime.take_while { |p| p < 2_000_000 }
p prime.sum