[*1..500].combination(2) { |x, y, z = (1000 - x - y)| p x * y * z if x**2 + y**2 == z**2 }
