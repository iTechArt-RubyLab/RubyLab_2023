class Array
  def lab_rotate(x = 1)
    array_rotate(dup, x)
  end

  def lab_rotate!(x = 1)
    array_rotate(self, x)
  end

  private

  def array_rotate(arr,x)
    x >= 0 ? x.times{ arr = arr.push( arr.shift ) } : x.abs.times{ arr = arr.unshift( arr.pop ) }
    arr
  end
end
