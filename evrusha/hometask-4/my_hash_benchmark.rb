require 'benchmark'
require_relative 'my_hash'

Benchmark.bm do |x|
  hash = {}
  my_hash = MyHash.new
  x.report('hash_[]=') { 1_000.times { hash[_1] = _1 } }
  x.report('my_hash_[]=') { 1_000.times { my_hash[_1] = _1 } }
  x.report('hash_[]') { hash[1_000] }
  x.report('my_hash_[]') { my_hash[1_000] }
  x.report('hash_size') { hash.size }
  x.report('my_hash_size') { my_hash.size }
  x.report('hash_delete') { hash.delete(1_000) }
  x.report('my_hash_delete') { my_hash.delete(1_000) }
  x.report('hash_clear') { hash.clear }
  x.report('my_hash_clear') { my_hash.clear }
end
