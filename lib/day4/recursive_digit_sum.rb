

def solution(number, k)
  if number.size == 1 and k == 1
    return number
  end

  number_contact = number * k
  number = number_contact.chars.to_a.map(&:to_i).reduce{ |acc, ele| acc + ele }
  solution(number.to_s, 1)
end

def solution_2(number, k)
  number = number.chars.to_a.map(&:to_i).reduce{ |acc, ele| acc + ele }
  (1 + (k * number - 1) % 9).to_s
end
