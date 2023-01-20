
require './lib/day4/recursive_digit_sum'

RSpec.describe 'Recursive Digit Sum' do
  it 'should work' do
    result = solution('148', 3)
    expect(result).to eq('3')
  end

  it 'should work' do
    number = '3546630947312051453014172159647935984478824945973141333062252613718025688716704470547449723886626736'
    k = 100000
    result = solution_2(number, k)
    expect(result).to eq('5')
  end
end
