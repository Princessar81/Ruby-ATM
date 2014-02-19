def withdraw(amount)
  if amount <= 0 # this deals with some of the situations...
    return false
  elsif amount%10 != 0
  	return false
  else
  	array = []
  	(amount/10).times do
  		array << 10
  	end
  	array
  end
end
# import required testing libraries
require 'minitest/spec'
require 'minitest/autorun'

# Below are the tests for automatically checking your solution.
# You need to replace these tests after each step.

describe 'atm' do
  [
    [-1, false],
    [0, false],
    [7, false],
    [20, [10, 10]],
    [25, [10, 10, 5]],
    [35, [10, 10, 10, 5]],
  ].each do |input, expected|
    it "should return #{expected} when $#{input} is withdrawn" do
      withdraw(input).must_equal expected
    end
  end
end