
require './lib/day2/diagonal_difference'

RSpec.describe 'DiagonalDifference' do
    it 'test one' do
        arr = [
            [11, 2, 4],
            [4, 5, 6],
            [10, 8, -12]
        ]
        expected = 15
        result = get_difference(arr)
        expect(result).to eq(expected)
    end
end