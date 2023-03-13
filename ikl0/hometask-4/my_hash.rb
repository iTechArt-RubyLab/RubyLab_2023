class MyHash
  include Enumerable
  attr_accessor :hash

  def initialize
    @hash = []
  end

  def []= (key, value)
    h = find(key)
    if !h.nil?
      h[1] = value
    else
      @hash.push([key, value])
    end
  end

  def [](key)
    find(key)[1]
  end

  def delete(key)
    @hash.delete(find(key))
  end

  def delete_all
    @hash.clear
  end

  def each(&block)
    @hash.each(&block)
  end

  def size
    @hash.size
  end

  private

  def find(key)
    @hash.find { |k, _| k == key }
  end
end