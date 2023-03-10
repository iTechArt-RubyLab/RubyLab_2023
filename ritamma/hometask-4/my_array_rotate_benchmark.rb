require 'benchmark'
require_relative './my_array_rotate'

Benchmark.bm do |x|
  p 'Array size = 10'
  x.report { (1..10).to_a.lab_rotate }
  x.report { (1..10).to_a.lab_rotate! }
  x.report { (1..10).to_a.rotate }
  x.report { (1..10).to_a.rotate! }
  p 'Array size = 1000000'
  x.report { (1..1_000_000).to_a.lab_rotate }
  x.report { (1..1_000_000).to_a.lab_rotate! }
  x.report { (1..1_000_000).to_a.rotate }
  x.report { (1..1_000_000).to_a.rotate! }
end
