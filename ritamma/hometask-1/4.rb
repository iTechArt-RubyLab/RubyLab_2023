pal = []
(100..999).each do |x|
  (100..999).each do |y|
    c = x * y
    pal << c if c.to_s == c.to_s.reverse
  end
end
p pal.max
