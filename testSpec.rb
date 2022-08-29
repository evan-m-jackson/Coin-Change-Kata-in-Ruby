require 'rspec/autorun'
require './test'

describe 'Coin changer logic' do
    
    it 'Can make a new object' do
        amount = Changer.new
    end

    it 'Returns 1 penny for 1' do
        amount = Changer.new
        expect(amount.change 1).to eq([1])
    end

    it 'Returns 2 pennies for 2' do
        amount = Changer.new
        expect(amount.change 2).to eq([1,1])
    end

    it 'Returns 1 nickle for 5' do
        amount = Changer.new
        expect(amount.change 5).to eq([5])
    end

    it 'Returns 1 dime for 10' do
        amount = Changer.new
        expect(amount.change 10).to eq([10])
    end

    it 'Returns 1 quarter for 25' do
        amount = Changer.new
        expect(amount.change 25).to eq([25])
    end

    it 'Returns 1 dime and 4 pennies for 14' do
        amount = Changer.new
        expect(amount.change 14).to eq([10,1,1,1,1])
    end

    it 'Returns the correct change for 99' do
        amount = Changer.new
        expect(amount.change 99).to eq([25,25,25,10,10,1,1,1,1])
    end
end