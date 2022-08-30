require 'rspec/autorun'

describe '#Coin.change' do

    it '1 penny for 1 cent' do
        coins = Coin.new

        expect(coins.change(1)).to eq([1])
    end

    it '4 pennies for 4 cents' do
        coins = Coin.new
        expect(coins.change(4)).to eq([1,1,1,1])
    end

    it '1 nickel for 5 cents' do
        coins = Coin.new
        expect(coins.change(5)).to eq([5])
    end

    it '1 dime for 10 cents' do
        coins = Coin.new
        expect(coins.change(10)).to eq([10])
    end

    it '1 quarter for 25 cents' do
        coins = Coin.new
        expect(coins.change(25)).to eq([25])
    end

    it 'change for 33 cents' do
        coins = Coin.new
        expect(coins.change(33)).to eq([25,5,1,1,1])
    end

    it '4 quarters for 1 dollar' do
        coins = Coin.new
        expect(coins.change(100)).to eq([25,25,25,25])
    end
end

class Coin
    COINS = [25, 10, 5, 1]
    def change amount
        
        return_coins = []

        COINS.each do |coin|
            if amount >= coin
                return_coins << [coin] * (amount/coin)
                amount = amount - (coin * (amount/coin))
            end
        end
        return_coins.flatten
    end
end