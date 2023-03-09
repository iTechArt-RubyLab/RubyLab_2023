require 'benchmark'
require_relative './my_array_rotate'


Benchmark.bmbm do |x|
  x.report("lab_rotate!") { (1..1_000_000).to_a.lab_rotate! }
  x.report("rotate!") { (1..1_000_000).to_a.rotate! }
  x.report("lab_rotate") { (1..1_000_000).to_a.lab_rotate }
  x.report("rotate") { (1..1_000_000).to_a.rotate }
end

