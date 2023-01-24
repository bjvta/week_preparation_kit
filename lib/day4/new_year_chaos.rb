
require 'byebug'

def solution(arr)
  counter = {}

  1.upto(arr.size) do |i|
    next if i == arr[i-1] or i == arr.size

    index = arr.find_index(i)
    arr[i-1], arr[index] = arr[index], arr[i - 1]

    counter.key?("#{i-1}") ? counter["#{i-1}"] += 1 : counter["#{i-1}"] = 1 
    counter.key?("#{index}") ? counter["#{index}"] += 1 : counter["#{index}"] = 1 

    puts ''
    print(arr)
  end

  counter.each do |key, value|
    if value > 2
      return 'Too chaotic'
    end
  end
  total = counter.map { |h| h[1] }.sum
  total / 2
end

def solution_2 arr
  arr2 = arr.map(&:clone)
  arr2 = arr2.sort
  print(arr2)
  puts ''
  
  counter = {}

  0.upto(arr.size - 1) do |i|
    next if arr2 == arr 
    
    ele = arr[i]
    index = arr2.find_index(ele)
    arr2[i], arr2[index] = arr2[index], arr2[i]

    counter.key?("#{ele}") ? counter["#{ele}"] += 1 : counter["#{ele}"] = 1 
    counter.key?("#{arr2[i]}") ? counter["#{arr2[i]}"] += 1 : counter["#{arr2[i]}"] = 1 

    puts ''
    print(arr2)
  end

  counter.each do |key, value|
    if value > 2
      return 'Too chaotic'
    end
  end

  total = counter.map { |h| h[1] }.sum
  total / 2
end
