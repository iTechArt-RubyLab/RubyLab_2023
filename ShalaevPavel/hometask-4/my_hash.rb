class MyHasH
  include Enumerable

  attr_accessor :container

  def initialize
    @container = [[], []]
  end

  def []= (key, value)
    self.container[0].push key
    self.container[1].push value
  end

  def [](key)
    if container[0].include? key
      index = container[0].find_index(key)
      container[1][index]
    else
      nil
    end

  end

  def delete_pair(key)
    if container[0].include? key
      index = container[0].find_index(key)
      container[0].delete(key)
      container[1].delete(container[1][index])
    else
      raise("No elements found")
    end

  end

  def size
    container[0].size
  end

  def clear_all_pairs
    container[0].clear
    container[1].clear
  end

  #implement each method
  def each
    container[0].each_with_index do |k, i|
      yield(k, container[1][i])
    end

  end


end

# my_hash = MyHasH.new
# my_hash[5] = 7
# my_hash[7] = 12
# my_hash["key_2"] = 123
# my_hash["key_3"] = 56
# my_hash["key_4"] = 561
# my_hash["key_5"] = 563
# p my_hash[7]
# p my_hash.container
# p my_hash[77]
# my_hash.delete_pair(5)
# # my_hash.delete_pair(69)
# p my_hash.size
# p my_hash.container
#
# my_hash.each do |k, v|
#   print k.to_s+ " =>  "+ v.to_s+  " "
# end

