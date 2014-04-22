require File.dirname(__FILE__) + "/spec_helper"
require 'golf'

describe "Golf" do

  # keep
  describe ".hole1" do
    it "should multiply the numbers in an array" do
      expect(Golf.hole1([1,2,3,4])).to eql 24
    end
    it "should be 600 for [5,2,10,6]" do
      expect(Golf.hole1([5,2,10,6])).to eql 600
    end
    it "should be 50 for [2,5,5]" do
      expect(Golf.hole1([2,5,5])).to eql 50
    end
  end


  # keep
  describe ".hole2" do
    it "should return the letters of the alphabet" do
      expect(Golf.hole2).to eql ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
    end
  end


  describe ".hole3" do
    it "should calculate the factorial of 4, i.e. 4*3*2*1" do
      expect(Golf.hole3(4)).to eql 24
    end
    it "should be 120 for 5" do
      expect(Golf.hole3(5)).to eql 120
    end
    it "should be 40320 for 8" do
      expect(Golf.hole3(8)).to eql 40320
    end
    it "should be 3628800 for 10" do
      expect(Golf.hole3(10)).to eql 3628800
    end
  end


  describe ".hole4" do
    it "should put a hat on every man" do
      expect(Golf.hole4(["man(bob)", "man(geoff)", "man(harry)"])).to eq(
        ["hat(man(bob))", "hat(man(geoff))", "hat(man(harry))"]
      )
    end

    it "should feed each dog a bone" do
      expect(Golf.hole4(["dog(luna)", "dog(rex)", "dog(spot)"])).to eq(
        ["dog(luna(bone))", "dog(rex(bone))", "dog(spot(bone))"]
      )
    end

    it "should collapse the probability waveform of each cat" do
      expect(Golf.hole4(["cat(tiddles)", "cat(miffy)"])).to eq(
        ["dead(tiddles)", "dead(miffy)"]
      )
    end

    it "should do all the above at once" do
      expect(Golf.hole4(["man(steve)", "dog(snoopy)", "cat(garfield)"])).to eq(
        ["hat(man(steve))", "dog(snoopy(bone))", "dead(garfield)"]
      )
    end
  end


  # keep
  describe ".hole5" do
    it "should return all sub-lists of the input, sorted by length then numerically" do
      expect(Golf.hole5([1,2,3,4])).to eq(
        [[1], [2], [3], [4], [1, 2], [2, 3], [3, 4], [1, 2, 3], [2, 3, 4], [1, 2, 3, 4]]
      )

      expect(Golf.hole5([4,10,15,23])).to eq(
        [[4], [10], [15], [23], [4, 10], [10, 15], [15, 23], [4, 10, 15], [10, 15, 23], [4, 10, 15, 23]]
      )
    end
  end


  # keep
  describe ".hole6" do
    it "should play fizzbuzz to 3, where multiples of 3 are 'fizz'" do
      expect(Golf.hole6(3)).to eql [1,2,"fizz"]
    end

    it "should play fizzbuzz to 5, with rules above and multiples of 5 are 'buzz'" do
      expect(Golf.hole6(5)).to eql [1,2,"fizz",4,"buzz"]
    end

    it "should play fizzbuzz to 10 with rules above and muliples of 3 and 5 are 'fizzbuzz'" do
      expect(Golf.hole6(15)).to eql [1,2,"fizz",4,"buzz","fizz",7,8,"fizz","buzz",11,"fizz",13,14,"fizzbuzz"]
    end

    it "should play fizzbuzz to 30" do
      expect(Golf.hole6(30)).to eql [1,2,"fizz",4,"buzz","fizz",7,8,"fizz","buzz",11,"fizz",13,14,"fizzbuzz",16,17,"fizz",19,"buzz","fizz",22,23,"fizz","buzz",26,"fizz",28,29,"fizzbuzz"]
    end
  end

  # keep
  describe ".hole7" do
    it "should collapse consecutive numbers to a range" do
      expect(Golf.hole7([1,2,3])).to eql ["1-3"]
    end

    it "should keep separate ranges distinct" do
      expect(Golf.hole7([1,2,3,5,6,7,100,101])).to eql ["1-3","5-7","100-101"]
    end

    it "should show isolated digits on their own" do
      expect(Golf.hole7([1,2,3,5,10,11,12])).to eql ["1-3","5","10-12"]
    end
  end


  describe ".hole8" do
    it "should give the first N numbers of the fibonacci sequence" do
      expect(Golf.hole8(5)).to eql [1,1,2,3,5]
    end

    it "should give the first 9 numbers" do
      expect(Golf.hole8(9)).to eql [1,1,2,3,5,8,13,21,34]
    end

    it "should give the first 15 numbers" do
      expect(Golf.hole8(15)).to eql [1,1,2,3,5,8,13,21,34,55,89,144,233,377,610]
    end
  end


  # keep
  describe ".hole9" do
    it "should truncate words of >10 characters to exactly 10 characters" do
      expect(Golf.hole9("triangulation").length).to eql 10
    end

    it "should truncate using '...' 3 charaters before the end" do
      expect(Golf.hole9("triangulation")).to eql "tria...ion"
    end

    it "should not alter words of 10 characters or less" do
      expect(Golf.hole9("characters")).to eql "characters"
    end

    it "should do the above on the individual words in a sentence" do
      expect(Golf.hole9("The congregation disliked the minister's condescending tone.")).to eql "The cong...ion disliked the minister's cond...ing tone."
    end
  end

end

