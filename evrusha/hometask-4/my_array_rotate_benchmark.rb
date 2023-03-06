require 'benchmark'
require_relative 'my_array_rotate'

Benchmark.bm do |x|
  x.report('lab_rotate') { [*1..1_000_000].lab_rotate(10_000_000) }
  x.report('rotate') { [*1..1_000_000].rotate(10_000_000) }
  x.report('lab_rotate!') { [*1..1_000_000].lab_rotate!(10_000_000) }
  x.report('rotate!') { [*1..1_000_000].rotate!(10_000_000) }
end
