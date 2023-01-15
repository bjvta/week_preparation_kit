

def get_counting_arr(arr)
   counting_arr = Array.new(100, 0)
    arr.count.times do |i|
        counting_arr[arr[i]] += 1
    end
    counting_arr
end