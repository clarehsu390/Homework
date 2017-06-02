class Stack
    def initialize
      @stack = []
    end

    def add(el)
      @stack.push(el)
    end

    def remove
      @stack.pop
    end

    def show
      @stack.dup
    end
  end

class Queue
  def initialize
    @queue = []
  end

  def enqueue(el)
    @queue.unshift(el)
  end

  def dequeue(el)
    @queue.pop
  end

  def show
    @queue.dup
  end
end

class Map
  def initialize
    @map = []
  end

  def assign(key, value)
    @map << [key, value]
  end

  def lookup(key)
    @map.each do |k, v|
      return v if k == key
    end
  end

  def remove(key)
    @map.reject! {|k,v| k == key}

  end

  def show
    @map.dup
  end
end

a = Map.new
p a.assign(3,4)
p a.assign(4,3)
p a.lookup(3)
p a.remove(3)
p a.show
