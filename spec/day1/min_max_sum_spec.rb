# frozen_string_literal: true

require './lib/day1/min_max_sum.rb'

RSpec.describe 'MinMaxSum' do
    it 'should work' do
        given = [1,3,5,7,9]
        expected = "16 24"
        result = miniMaxSum(given)
        expect(result).to eq(expected)
    end
end