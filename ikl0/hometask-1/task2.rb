# frozen_string_literal: true
arr = [1, 2]
result = 2
while arr[1] <= 4000000 do
  sum = arr[0] + arr[1]
  if sum.even?
    result += sum
  end
  arr[0] = arr[1]
  arr[1] = sum
end
puts result
