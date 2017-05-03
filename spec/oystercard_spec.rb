require 'oystercard'

describe Oystercard do
    
    it 'has a balance of zero' do 
        expect(subject.balance).to eq(0)
    end 
    
    it 'can be topped up' do 
        expect(subject.top_up(5)).to eq (5)
    end 
    
    it 'raises and error if top up balance is excceeded' do
        maximum_balance = Oystercard::MAXIMUM_BALANCE
        subject.top_up(maximum_balance)
        expect{subject.top_up(1)}.to raise_error "Maximum balance of {MAXIMUM_BALANCE} has been met."
    end 
    
    it 'deducts an amount from the balance' do 
        subject.top_up(5)
        expect(subject.deduct(1)).to eq (4)
    end 
end 
