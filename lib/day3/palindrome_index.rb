
require 'byebug'

def isPalindrome(str)

  str.split('').each_with_index do |c, i|
    return true if i > str.size / 2

    return false if c != str[str.size - i -1]
  end
  true
end


def palindromeIndex(str)
  return -1 if isPalindrome(str)

  str.split('').each_with_index do |c, i|
    return -1 if i > str.size / 2
    str_1 = str.clone
    str_2 = str.clone
    
    str_1.slice!(i)
    str_2.slice!(str.size - i - 1)

    return i if isPalindrome(str_1)
    return str.size - i - 1 if isPalindrome(str_2)
  end
end