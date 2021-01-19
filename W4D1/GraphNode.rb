class GraphNode
    def initialize(value)
        @value = value
        @neighbors = []
    end

    def add_neighbors(node)
        @neighbors << node

    end
    def bfs(starting_node, target_value)
        queue = [starting_node]
        until queue.empty?
            ele = queue.shift
            if ele.value == target_value
                return ele
            end
            ele.neighbors.each|node|
            queue << node
        end
    end

end