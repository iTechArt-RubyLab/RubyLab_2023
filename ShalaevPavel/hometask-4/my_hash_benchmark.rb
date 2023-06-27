require './my_hash.rb'
require 'benchmark'

my_hash = MyHasH.new
my_hash[5] = 7
my_hash[7] = 12
my_hash["key_2"] = 123
my_hash["key_3"] = 56
my_hash["key_4"] = 561


a = {5 => 7, 7 => 12, "key_2" => 123, "key_3" => 56, "key_4" => 561}
p Benchmark.measure {a.each { |k, v| print k.to_s+ " =>  "+ v.to_s+  " "}}
p Benchmark.measure {my_hash.each { |k, v| print k.to_s+ " =>  "+ v.to_s+  " "}}