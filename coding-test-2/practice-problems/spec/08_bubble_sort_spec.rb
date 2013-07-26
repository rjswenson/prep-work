require '08_bubble_sort'
require 'rspec'

# Write a function `bubble_sort(arr)` which will sort an array of
# integers using the "bubble sort"
# methodology. (http://en.wikipedia.org/wiki/Bubble_sort)
#
# Difficulty: 3/5

describe "#bubble_sort" do
  it "works with an empty array" do
    bubble_sort([]).should == []
  end

  it "works with an array of one item" do
    bubble_sort([1]).should == [1]
  end

  it "sorts numbers" do
    bubble_sort([5, 4, 3, 2, 1]).should == [1, 2, 3, 4, 5]
  end

  it "sorts unordered nums" do
    bubble_sort([46, 7, 3, 19, 110]).should == [3, 7, 19, 46, 110]
  end

  it "sort an array containing nils" do
    bubble_sort([nil, 1, 9, 2, 4]).should == [nil, 1, 2, 4, 9]
    bubble_sort([1, 9, nil, 2, 4]).should == [nil, 1, 2, 4, 9]
    bubble_sort([1, 9, 4, 2, nil]).should == [nil, 1, 2, 4, 9]
    bubble_sort([nil, nil, nil, 1]).should == [nil, nil, nil, 1]
  end
end
