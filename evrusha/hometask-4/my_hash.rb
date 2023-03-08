class MyHash
  include Enumerable

  ELEMENTS = 1_000_000

  def initialize
    @hash = Array.new(ELEMENTS) { [] }
  end

  def [](key)
    find_hash(key)&.last
  end

  def []=(key, value)
    old_hash = find_hash(key)
    if old_hash
      old_hash[1] = value
    else
      @hash[hashy(key)] << [key, value]
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
    @hash[hashy(key)].delete(find_hash(key))
  end

  private

  def hashy(key)
    key.hash % ELEMENTS
  end

  def find_hash(key)
    @hash[hashy(key)].find { _1.first == key }
  end
end
