

def solution(arr)
  result = {}
  arr.each do |ele|
    if result.key? ele.to_s
      result[ele.to_s] += 1
    else
      result[ele.to_s] = 1
    end
  end
  result
end
