(1..1000).each do |x|
  (x..1000).each do |y|
    c = 1000 - x - y
    if c.positive? && c**2 == x**2 + y**2
      p x * y * c
      break
    end
  end
end
