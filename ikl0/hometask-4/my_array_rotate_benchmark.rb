require 'benchmark'
require_relative './my_array_rotate'

Benchmark.bm do |x|
  x.report { (1..1_000_000).to_a.lab_rotate }
  x.report { (1..1_000_000).to_a.rotate }
  puts '_' * 50
  x.report { (1..1_000_000).to_a.lab_rotate! }
  x.report { (1..1_000_000).to_a.rotate! }
end