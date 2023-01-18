
require 'byebug'

def solution(grid)
  loops = grid[0].size
  new_grid = grid.map{ |word| word.chars.sort.join('') }


  loops.times do |i|
    new_word = new_grid.map{ |word| word[i] }
    if new_word.sort != new_word
      return 'NO'
    end
  end
  'YES'
end