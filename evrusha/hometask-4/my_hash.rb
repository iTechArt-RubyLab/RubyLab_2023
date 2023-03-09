class MyHash
  include Enumerable

  def initialize
    @sectors = 100
    @elements = 10
    @hash = Array.new(@sectors) { [] }
  end

  def [](key)
    find_hash(key)&.last
  end

  def []=(key, value)
    old_hash = find_hash(key)
    if old_hash
      old_hash[1] = value
    else
      hash_block = @hash[hash_index(key)]
      create_hash if hash_block.size > @elements
      hash_block << [key, value]
    end
  end

  def each(&block)
    @hash.each(&block)
  end

  def clear
    @hash.clear
  end

  def size
    @hash.size
  end

  def delete(key)
    @hash[hash_index(key)].delete(find_hash(key))
  end

  private

  def create_hash
    @sectors *= @elements
    new_hash = Array.new(@sectors) { [] }
    @hash.flatten(1).each { new_hash[hash_index(_1.first)] << _1 }
    @hash = new_hash
  end

  def hash_index(key)
    key.hash % @sectors
  end

  def find_hash(key)
    @hash[hash_index(key)].find { _1.first == key }
  end
end
