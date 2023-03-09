require 'prime'

def all_rotated(number_str)
  arr = number_str.split('')
  p arr.rotate(2)
end
# all_rotated("1536")
# p [1, 2, 4, 6].rotate(3)

def is_circular?(number)
  converted = number.to_s.split('')
  (0..converted.length - 1).each do |i|
    if converted.rotate(i).join.to_i.prime? == false
      return false
    end
  end
  true
end

# p (0..100).reduce{|x, counter| counter + is_circular?(x).to_i }
p (1..2_000_000).select {|x| is_circular?(x)}.count
