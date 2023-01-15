
require 'byebug'

def conversion_time(data)
    is_afternoon = data[-2] == 'P'
    data.slice!(-1)
    data.slice!(-1)
    numbers = data.split(':')
    if is_afternoon
        if numbers[0] != '12'
            numbers[0] = (numbers[0].to_i + 12).to_s
        end
    elsif numbers[0] == '12'
        numbers[0] = '00'
    end
    numbers.join(':')
end


def findMedian(arr)
    arr = arr.sort
    print(arr)
    med = (arr.count + 1) / 2
    arr[med]
end