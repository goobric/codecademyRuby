### Building a Private Bank
# Now that you know how to control the level of privacy in a Ruby class, we can use that to our advantage when creating objects. In this case, we’ll be making an Account object with public methods to display balances and transfer funds, but which rely on private methods to make sure the user’s PIN (personal identification number) is correct before approving transactions.
# Note: We’re just using banking as an example because it’s a nice real-world analogy. This isn’t for real banking, so don’t use any real banking information!
# Check out the code below. See how we have public methods for interacting with the user and private methods for checking the PIN? Run the code to see how it works!
class Account
    attr_reader :name, :balance
    def initialize(name, balance=100)
      @name = name
      @balance = balance
    end
    
    def display_balance(pin_number)
      puts pin_number == pin ? "Balance: $#{@balance}." : pin_error
    end
end
