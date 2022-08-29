require 'rspec/autorun'

describe '#Coin' do

    it "1 penny for 1 cent" do
        coins = Coin.new

        expect(coins.change(1)).to eq([1])
    end

    it "2 pennies for 2 cents" do
        coins = Coin.new

        expect(coins.change(2)).to eq([1, 1])
    end

    it "1 nickel for 5 cents" do
        coins = Coin.new

        expect(coins.change(5)).to eq([5])
    end

    it "1 dime for 10 cents" do
        coins = Coin.new

        expect(coins.change(10)).to eq([10])
    end

    it "1 quarter for 25 cents" do
        coins = Coin.new

        expect(coins.change(25)).to eq([25])
    end

    it "1 nickel and 1 penny for 6 cents" do
        coins = Coin.new

        expect(coins.change(6)).to eq([5, 1])
    end

    it "Change for 99 cents" do
        coins = Coin.new

        expect(coins.change(99)).to eq([25,25,25,10,10,1,1,1,1])
    end

    it "Change for 93 cents" do
        coins = Coin.new

        expect(coins.change(93)).to eq([25,25,25,10,5,1,1,1])
    end

    it "1 dollar for 100 cents" do
        coins = Coin.new

        expect(coins.change(100)).to eq([100])
    end
end

class Coin
    def change cent

        return_coins = []
        
        while cent > 0
            if cent >= 25
                c = 25
            elsif cent >= 10
                c = 10
            elsif cent >= 5
                c = 5
            else
                c = 1
            end
            return_coins << c
            cent -= c
        end
        return_coins
    end

end