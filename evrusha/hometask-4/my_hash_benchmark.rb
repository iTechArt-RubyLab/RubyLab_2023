require 'benchmark'
require_relative 'my_hash'

Benchmark.bm do |x|
  hash = {}
  my_hash = MyHash.new
  x.report('hash_[]') { hash[:abc] = 'def' }
  x.report('my_hash_[]') { my_hash[:abc] = 'def' }
end
