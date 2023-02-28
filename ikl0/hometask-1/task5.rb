# frozen_string_literal: true

p(1..20).inject(1) { |result, n| p result.lcm n }
