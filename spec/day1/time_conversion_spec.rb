
require './lib/day1/time_conversion.rb'


RSpec.describe 'TimeConversion' do
    it 'convert the number' do
        given_data = "12:01:00PM"
        expected = "12:01:00"
        result = conversion_time(given_data)
        expect(result).to eq expected
    end

    it 'convert the number' do
        given_data = "12:01:00AM"
        expected = "00:01:00"
        result = conversion_time(given_data)
        expect(result).to eq expected
    end
end