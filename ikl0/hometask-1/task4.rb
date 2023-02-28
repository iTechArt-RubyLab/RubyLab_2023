# frozen_string_literal: true

max = -1
999.downto(100) do |i|
  999.downto(100) do |x|
    num = i * x
    pal = num if num.to_s == num.to_s.reverse
    max = pal if pal.to_i > max
  end
end
puts max
