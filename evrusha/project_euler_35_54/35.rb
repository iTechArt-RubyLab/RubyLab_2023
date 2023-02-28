require 'prime'
p Prime.each(1_000_000).select { |x, y = x.to_s.chars| y.map { y.rotate!.join.to_i }.all?(&:prime?) }.size
