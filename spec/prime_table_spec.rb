require 'prime'
require 'spec_helper'

describe 'Prime.prime?:' do
  specify "prime numbers" do
    numbers = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 83, 89, 97] 
    result = numbers.all? {|number| Prime.prime?(number) }
    expect(result).to eq true
  end

  specify "composite numbers" do
    numbers = [1, 4, 6, 8, 9, 10, 12, 14, 15, 16, 75, 76, 77] 
    result = numbers.any? {|number| Prime.prime?(number) }
    expect(result).to eq false
  end

  specify "float numbers" do
    expect(Prime.prime?(2.15)).to eq false
  end

end

describe 'Prime.each' do
  it 'should iterate through 10 prime numbers' do
    numbers = []
    Prime.each(10) do |number|
      numbers << number
    end
    expect(numbers.size).to eq 10
  end

  it 'should return enumerator' do
    expect(Prime.each(10)).to be_kind_of(Enumerator)
  end
end

describe 'Prime.first' do
  it 'should return array of 20 prime numbers' do
    expect(Prime.first(10)).to eq [2, 3, 5, 7, 11, 13, 17, 19, 23, 29]
  end
end