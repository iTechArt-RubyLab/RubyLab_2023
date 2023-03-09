class Array
  def lab_rotate(num = 1)
    num %= size
    self[num..] + self[...num]
  end

  def lab_rotate!(num = 1)
    replace(lab_rotate(num))
  end
end
