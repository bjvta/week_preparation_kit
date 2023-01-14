
require 'byebug'


def remove_min(arr)
    arr.delete_at(arr.index(arr.min))
    arr
end

def remove_highest(arr)
    arr.delete_at(arr.index(arr.max))
    arr
end


def miniMaxSum(arr)
    arr2 = arr.map(&:clone)
    max_arr = remove_min(arr2)
    min_arr = remove_highest(arr)
    sum_min = min_arr.inject(0){ |sum, x| sum + x} 
    sum_max = max_arr.inject(0){ |sum, x| sum + x} 
    result = "#{sum_min} #{sum_max}"
    result
end