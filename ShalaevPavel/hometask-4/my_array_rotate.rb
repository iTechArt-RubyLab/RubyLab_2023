class MyArray < Array
  def lab_rotate!(number_of_cycles = 1)
    if number_of_cycles > 0
      (0..number_of_cycles - 1).each do
        tmp = self.delete_at(0)
        self.push tmp

      end
    else
      (0..number_of_cycles.abs - 1).each do
        tmp = self.pop
        self.insert(0, tmp)
      end

    end

  end


  def lab_rotate(number_of_cycles = 1)
    copied = self.dup
    if number_of_cycles > 0
      (0..number_of_cycles - 1).each do
        tmp = copied.delete_at(0)
        copied.push tmp

      end
    else
      (0..number_of_cycles.abs - 1).each do
        tmp = copied.pop
        copied.insert(0, tmp)
      end

    end
    copied
  end

end

# m = MyArray.new([1, 2, 3, 4, 5, 6, 7])
# p m
# m.lab_rotate!
# p m


# arr = MyArray.new( [1, 4, 2, 6, 8, 7, 3])
# p arr.lab_rotate!
# p arr
# p arr.lab_rotate
# p arr


