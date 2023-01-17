require './lib/day3/palindrome_index'


RSpec.describe 'PalindromeIndex' do
  describe 'isPalindrome' do
    it 'should return true' do
      result = isPalindrome('aba')
      expect(result).to be_truthy
    end
    it 'should return true' do
      result = isPalindrome('aa')
      expect(result).to be_truthy
    end
    it 'should return false' do
      result = isPalindrome('aaab')
      expect(result).to be_falsey
    end
  end


  describe 'palindromeIndex' do
    it 'should return 3' do
      result = palindromeIndex('aaab')
      expect(result).to eq(3)
    end

    it 'should return 0' do
      result = palindromeIndex('baa')
      expect(result).to eq(0)
    end

    it 'should return -1' do
      result = palindromeIndex('aaa')
      expect(result).to eq(-1)
    end
  end
end