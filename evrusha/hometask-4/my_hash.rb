class MyHash
  include Enumerable
  attr_reader :hash

  def initialize
    @hash = []
  end

  def [](key)
    hash.find { _1[0] == key }&.last
  end

  def []=(key, value)
    key2 = find_hash(key)
    if key2
      key2.replace [key, value]
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
    hash.find { _1[0] == key }
  end
end
