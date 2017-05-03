require 'oystercard'

describe Oystercard do
    it 'has a balance of zero' do 
        expect(subject.balance).to eq(0)
    end 
    
    it 'is can be topped up' do 
        expect(subject.top_up(5)).to eq (5)
    end 
end 
