# frozen_string_literal: true

require './lib/day3/caesar_ciper'

RSpec.describe 'CaesarCiper' do
  it 'should work' do
    result = get_the_new_string('abc', 1)
    expect(result).to eq 'bcd'
  end

  it 'should work2' do
    result = get_the_new_string('middle-Outz', 2)
    expect(result).to eq 'okffng-Qwvb'
  end
end
