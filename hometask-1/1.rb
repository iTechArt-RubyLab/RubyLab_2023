sum = 0
(1...1000).each do |number|
  number % 3 == 0 ? sum += number : number % 5 == 0 ? sum += number : next
end

