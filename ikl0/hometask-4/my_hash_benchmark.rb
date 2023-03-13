require 'benchmark'
require_relative './my_hash'

Benchmark.bm do |x|
  my_hash = MyHash.new
  hash = {}

  x.report { 10_000.times { |y| my_hash[y] = y } }
  x.report { 10_000.times { |y| hash[y] = y } }
  puts '-' * 50
  x.report { my_hash[100] }
  x.report { hash[100] }
  puts '-' * 50
end