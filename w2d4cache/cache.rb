class LRUCache

  attr_accessor :cache

    def initialize
      @cache = []
    end

    def count
      @cache.count
    end

    def add(el)
      if cache.include?(el)
        cache.delete(el)
        cache << el
      else
        cache << el
        cache.shift if cache.count > 4
      end
    end

    def show
      @cache
    end

    private
    # helper methods go here!

  end
