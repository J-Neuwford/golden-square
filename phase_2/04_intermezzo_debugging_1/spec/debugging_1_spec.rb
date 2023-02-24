require 'debugging_1'

describe 'encode method' do 
 it 'returns correct output' do
  result = encode("theswiftfoxjumpedoverthelazydog", "secretkey")
  expect(result).to eq "EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL"
 end
end

describe 'decode method' do 
  it 'returns correct output' do
   result = decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")
   expect(result).to eq "theswiftfoxjumpedoverthelazydog"
  end
end

describe 'get_most_common_letter method' do
  it 'returns the most common letter in given text' do
      result = get_most_common_letter("the roof, the roof, the roof is on fire!")
      expect(result).to eq "o"
  end
end