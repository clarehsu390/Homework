class LRUCache

  attr_reader :max_val
    def initialize(max_val)
      @max_val = max_val
      @hash = []
    end

    def count
      @hash.length
    end

    def add(el)
      # adds element to cache according to LRU principle
      if @hash.include?(el)
        @hash.delete(el)
        @hash << el
      else
        @hash << el
      end

    end

    def show
      # shows the items in the cache, with the LRU item first
      delete_oldest
      @hash
    end

    private

    def delete_oldest
      if @hash.length >= max_val + 1
        until @hash.length == max_val
          @hash.shift
        end
      end
    end

end

johnny_cache = LRUCache.new(4)

p johnny_cache.add("I walk the line")
p johnny_cache.add(5)

p johnny_cache.count
  johnny_cache.add([1,2,3])
 johnny_cache.add(5)
 johnny_cache.add(-5)
 johnny_cache.add({a: 1, b: 2, c: 3})
 johnny_cache.add([1,2,3,4])
 johnny_cache.add("I walk the line")
 johnny_cache.add(:ring_of_fire)
 johnny_cache.add("I walk the line")
 johnny_cache.add({a: 1, b: 2, c: 3})


 p johnny_cache.show
