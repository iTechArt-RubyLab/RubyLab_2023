# frozen_string_literal: true

p (1..100).reduce { |result, num| result + num**2 } - (1..100).reduce { |result, num| result + num }**2
