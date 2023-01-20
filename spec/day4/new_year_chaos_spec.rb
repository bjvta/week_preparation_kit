
require './lib/day4/new_year_chaos.rb'

RSpec.describe 'NewYearChaos' do
  it 'should work' do
    n = [2,1,5,3,4]
    result = solution(n)
    expect(result).to eq(3)
  end

  it 'should return chaos' do
    n = [2,5,1,3,4]
    result = solution(n)
    expect(result).to eq 'Too chaotic'
  end

  it 'should return too chaotic' do
    n = [5, 1, 2, 3, 7, 8, 6, 4]
    result = solution(n)
    expect(result).to eq 'Too chaotic'
  end

  it 'should return a number' do
    n = [1, 2, 5, 3, 7, 8, 6, 4]
    result = solution_2(n)
    expect(result).to eq 7
  end
end
