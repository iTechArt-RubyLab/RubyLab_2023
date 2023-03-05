require './my_array_rotate.rb'
require 'benchmark'

array_ = (1..100_000).to_a
custom_array= MyArray.new(array_)
p Benchmark.measure {array_.rotate(1000)}
p Benchmark.measure {custom_array.lab_rotate(1000)}