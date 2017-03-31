class Stack

  attr_reader :stack

  def initialize
    @stack = []
  end

  def add(el)
    stack << el
    stack
  end

  def remove
    stack.pop
  end

  def show
    stack
  end
end

class Queue

  attr_reader :line

  def initialize
    @line = []
  end

  def enqueue(el)
    line << el
    el
  end

  def dequeue
    line.shift
  end

  def show
    line
  end
end

class Map

  attr_reader :kv

  def initialize
    @kv = []
  end

  def assign(key, value)
    pair_index = kv.index { |pair| pair[0] == key }
    pair_index ? kv[pair_index][1] = value : kv << [key, value]
    [key, value]
  end

  def lookup(key)
    kv.each { |pair| return pair[1] if pair[0] == key }
    nil
  end

  def remove(key)
    kv.reject! { |pair| pair[0] == key }
  end

  def show
    kv
  end
end
