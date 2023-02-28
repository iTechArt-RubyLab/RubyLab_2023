# frozen_string_literal: true

1.upto(1_000) do |i|
  i.upto(1_000) do |j|
    j.upto(1_000) do |k|
      p i * j * k if i**2 + j**2 == k**2 && i + j + k == 1000
    end
  end
end
