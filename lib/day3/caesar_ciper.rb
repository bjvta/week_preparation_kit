require 'byebug'


def get_the_new_string(str, k)
  alphabet = ('a'..'z').to_a
  new_alphabet = alphabet.map(&:clone)
  k.times do
    element = new_alphabet.shift
    new_alphabet.append(element)
  end

  new_word = ''
  str.split('').each do |c|
    if alphabet.include?(c.downcase)
      index = alphabet.index(c.downcase)
      new_word += alphabet.include?(c) ? new_alphabet[index] : new_alphabet[index].upcase
    else
      new_word += c
    end
  end
  new_word
end