require 'spec_helper'

describe FizzBuzz do
  let(:fizz_buzz) { FizzBuzz.new }

  describe '#for_number(n)' do

    it "returns the string of the number when provided 1 as input" do
      expect(fizz_buzz.for_number(1)).to be == '1'
    end

    it "returns the string of the number when provided 2 as input" do
      expect(fizz_buzz.for_number(2)).to be == '2'   
    end

    it "returns the word 'fizz' when provided 3 as input" do
      expect(fizz_buzz.for_number(3)).to be == 'fizz'
    end

    it "returns the word 'buzz' when provided 5 as input" do
      expect(fizz_buzz.for_number(5)).to be == 'buzz'
    end

    it "returns the word 'fizz' when provided a multiple of 3" do
      expect(fizz_buzz.for_number(6)).to be == 'fizz'
    end

    it "returns the word 'buzz' when provided a multiple of 5" do
      expect(fizz_buzz.for_number(10)).to be == 'buzz'
    end

    it "returns the phrase 'fizz buzz' when provided a multiple of both 3 and 5" do
      expect(fizz_buzz.for_number(15)).to be == 'fizz buzz'
    end

    it "for all other numbers it returns the number as a string" do
      expect(fizz_buzz.for_number(7)).to be == '7'
    end

  end

  describe '#print_to(n)' do
    it "returns a string with fizz-buzz values for each number from one up to n" do
      expect(fizz_buzz.print_to(10)).to be == '1, 2, fizz, 4, buzz, fizz, 7, 8, fizz, buzz'
    end
  end

  describe '#print_between(n1, n2)' do
    it "returns a string with fizz-buzz values for each number from n1 to n2" do
      expect(fizz_buzz.print_between(4,10)).to be == '4, buzz, fizz, 7, 8, fizz, buzz'
    end
  end

end
