class MyHash
  include Enumerable
  attr_reader :hash

  def initialize
    @hash = []
  end

  def [](key)
    find_hash(key)&.last
  end

  def []=(key, value)
    old_hash = find_hash(key)
    if old_hash
      old_hash.last = value
    else
      hash << [key, value]
    end
  end

  def each(&block)
    hash.each(&block)
  end

  def clear
    hash.clear
  end

  def size
    hash.size
  end

  def delete(key)
    hash.delete(find_hash(key))
  end

  private

  def find_hash(key)
    hash.find { _1.first == key }
  end
end
