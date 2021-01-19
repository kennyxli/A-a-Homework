class Stack
    def initialize
      @stack = []
    end

    def push(el)
      @stack << el
    end

    def pop
      @stack.pop
    end

    def peek
      @stack[0]
    end
  end

class Queue
    def initialize
        @queue = []
    end
    def enqueue(el)
        @queue << el
    end
    def dequeue
        @queue.pop
    end
    def peek
        @queue[0]
    end

end

class Map
    def initialize
        @map = []
    end

    def set(key,value)
        @map.each do |sub_arr|
            if sub_arr[0] == key
                sub_arr[1] = value
            elsif 
            end
        end
    end
    def get(key)
        @map.each do |sub_arr|
            if sub_arr[0] == key
                return sub_arr[1]
            end
        end
    end
    def delete(key)
        @map.each do |sub_arr|
            if sub_arr[0] == key
                @map.remove(sub_arr)
            end
        end
    end
end