require 'prime'
p Prime.take_while { _1 < 2_000_000 }.sum
