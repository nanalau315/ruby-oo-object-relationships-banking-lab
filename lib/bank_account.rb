class BankAccount
    attr_accessor :balance, :status
    attr_reader :name
    @@all = []
    def initialize (name)
        @name = name
        @balance = 1000
        @status = "open"
        @@all << self
    end

    def self.all
        @@all
    end

    def deposit(dep_amount)
        @balance += dep_amount
    end

    def display_balance
        p "Your balance is $#{self.balance}."
    end

    def valid?
        if self.status == "open" && self.balance > 0
            true
        else
            false
        end
    end

    def close_account
        self.status = "closed"
    end
end
