class Array
  def lab_rotate!(param = -1)
    param.abs.times do
      if param < 0
        self.unshift(self[-1])
        self.pop
      elsif param > 0
        self << self[0]
        self.shift
      end
    end
    self
  end

  def lab_rotate(param = -1)
    original = self.dup
    param.abs.times do
      if param < 0
        self.unshift(self[-1])
        self.pop
      elsif param > 0
        self << self[0]
        self.shift
      end
    end
    original
  end
end
