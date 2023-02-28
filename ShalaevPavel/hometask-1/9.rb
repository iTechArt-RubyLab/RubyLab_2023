
product = 1
(1..1000).each do |i|
  (1..1000).each do |j|
    (1..1000).each do |k|
      if i < j && j < k && i + j + k == 1000 && i ** 2 + j ** 2 == k ** 2
        product = i * j * k
        break
      end
    end

  end

end

p product
