class Oystercard 
    
    MAXIMUM_BALANCE = 90
    
    attr_reader :balance
    
    def initialize
        @balance = 0
    end 
    
    def top_up(amount)
        raise "Maximum balance of {MAXIMUM_BALANCE} has been met." if balance + amount > MAXIMUM_BALANCE
        @balance = balance + amount
    end
    
    def deduct(amount)
        @balance = balance - amount
    end
    
end 