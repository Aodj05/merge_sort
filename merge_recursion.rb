# frozen_string_literal: true
# sort one half of array
# sort other half of array
# merge them
def merge_sort(unsorted)
    # first divide halves, when array only has one left = done
    if unsorted.length <=1 
        return unsorted
    else
        mid = unsorted.length/2
        half1 = merge_sort(unsorted.slice(0...mid))
        half2 = merge_sort(unsorted.slice(mid...unsorted.length))
        merge(half1, half2)
    end
end

def merge(left, right)
    sorted = []
    # don't compare sorted/empty arrays
    while !left.empty? && !right.empty? do
        # shift out the compared values to not repeat
        if left[0] < right[0]
            sorted.push(left.shift)
        else
            sorted.push(right.shift)
        end
    end
    # concat array to another
    return sorted.concat(left).concat(right)
end

random_array = []; 20.times { random_array << rand(10)}

p random_array
p merge_sort(random_array)
