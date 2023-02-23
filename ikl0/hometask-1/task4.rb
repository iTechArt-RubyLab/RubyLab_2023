max = -1
999.downto(100) do |i|
  999.downto(100) do |x|
    num = i*x
    if num.to_s == num.to_s.reverse
      pal=num
      if pal.to_i > max
        max = pal
      end
    end
  end
end
puts max