# frozen_string_literal: true

require 'prime'
p Prime.each(2_000_000).reduce(:+)
