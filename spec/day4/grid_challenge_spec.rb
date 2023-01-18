
require './lib/day4/grid_challenge'

RSpec.describe 'Grid Challenge' do
  it 'should work' do
    grid = ['ebacd', 'fghij', 'olmkn', 'trpqs', 'xywuv']
    result = solution(grid)
    expect(result).to eq('YES')
  end

  it 'should return "YES"' do
    grid = ['kc', 'iu']
    result = solution(grid)
    expect(result).to eq('YES')
  end

  it 'should return "NO"' do
    grid = ['uxf', 'vof', 'hmp']
    result = solution(grid)
    expect(result).to eq('NO')
  end
end