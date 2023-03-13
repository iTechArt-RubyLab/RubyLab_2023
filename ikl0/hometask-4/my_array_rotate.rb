class Array
  def lab_rotate(num = 1)
    arr = self.dup
    num.abs.times do
      if num >= 0
        arr.push(arr.shift)
      else
        arr.unshift(arr.pop)
      end
    end
    arr
  end

  def lab_rotate!(num = 1)
    num.abs.times do
      if num >= 0
        self.push(self.shift)
      else
        self.unshift(self.pop)
      end
    end
    self
  end
end