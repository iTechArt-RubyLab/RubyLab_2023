# frozen_string_literal: true

arr = [1, 2]
result = 2
while arr[1] <= 4_000_000
  sum = arr[0] + arr[1]
  result += sum if sum.even?
  arr[0] = arr[1]
  arr[1] = sum
end
puts result
