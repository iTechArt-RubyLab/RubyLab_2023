require 'prime'

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
p (1..1_000_000).select {|x| is_circular?(x)}.count
