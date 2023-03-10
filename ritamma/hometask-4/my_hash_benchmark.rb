require 'benchmark'
require_relative './my_hash'

Benchmark.bm do |x|
  my_hash = MyHash.new
  hash = {}

  p 'My hash'
  x.report { 1_000_000.times { |y| my_hash[y] = y } }
  x.report { my_hash[100] }
  x.report { my_hash.size }
  x.report { my_hash.delete_all }

  p 'Hash'
  x.report { 1_000_000.times { |y| hash[y] = y } }
  x.report { hash[100] }
  x.report { hash.size }
  x.report { hash.clear }
end
