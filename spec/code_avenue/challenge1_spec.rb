
require './lib/code_avenue/challenge1'

RSpec.describe 'Code Avenue' do
  it 'show work' do
    author = 'epaga'
    result = getAuthorHistory(author)
    expect(result).to be instance_of Array
  end
  
  it 'should word with two' do
    author = 'coloneltcb'
    result = getAuthorHistory(author)
    expect(result).to eq instance_of Array
  end
end
