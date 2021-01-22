def sluggish_octopus(arr)
    curr_longest = nil
    longest = ''
    arr.each_with_index do |ele, idx|
        arr.each_with_index do |ele2, idx2|
            curr_longest = ele
            if curr_longest.length > longest.length
                longest = curr_longest
            end
        end
    end
    longest
end

def dominant_octopus(arr)
    arr.sort_by{|ele| ele.length}[-1]
end

def clever_octopus(arr)
    arr.max_by{|ele| ele.length}
end

def slow_dance(str, array)
    array.each_with_index do |ele, idx|
        if ele == str
            return idx
        end
    end
end

def fast_dance(str, hash)
    new_tiles[str]
end