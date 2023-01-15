
require 'byebug'

def get_difference(arr)
    arr_hash = {'primary': 0, 'secondary': 0}
    arr.count.times do |i|
        arr_hash[:primary] += arr[i][i]
        arr_hash[:secondary] += arr[i][arr.count - i - 1]
    end
    result = arr_hash[:primary] - arr_hash[:secondary]
    (result).abs
end