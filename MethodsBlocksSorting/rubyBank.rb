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

    def withdraw(pin_number, amount)
        if pin_number == pin
            @balance -= amount
            puts "Withdrew #{amount}. New balance: $#{@balance}."
        else
            puts pin_error
        end
    end
  
  private
  
  def pin
    @pin = 1234
  end
  
  def pin_error
    return "Access denied: incorrect PIN."
  end
end
my_account = Account.new("Eric", 1_000_000)
my_account.withdraw(11, 500_000)
my_account.display_balance(1234)
my_account.withdraw(1234, 500_000)
my_account.display_balance(1234)

# TASK1 Creating the Account Class
# We’ll start off by creating our Account class. First, though, you probably noticed this bit of fanciness in the last exercise:
def initialize(name, balance=100)
    @name = name
    @balance = balance
# What’s that balance=100 doing? It’s signifying an optional parameter. Ruby is saying that you can pass one or two arguments to initialize; if you pass two, it uses your balance argument to set @balance; if you only pass a name, balance gets a default value of 100, and that’s what gets stored in @balance.
# You probably also noticed we used underscores in our 1_000_000 (one million).Ruby allows this, and it makes it easier to read big numbers! Cool, no?
# Create an Account class in the editor. The :name and :balance attributes should be readable (but not writeable!). The class’ initialize method should take two parameters, name and balance, and the balance parameter should default to 100.
# Finally, go ahead and store your parameters in instance variables @name and @balance, respectively.
# Remember, you can use attr_reader :variable to make a variable read-only.
class Account2
  attr_reader :name, :balance
  def initialize(name, balance=100)
  @name = name
  @balance = balance
  end
  
  public
  def display_balance(pin_number)
    if pin_number == @pin
      puts "Balance: $#{@balance}."
    else
      puts pin_error
    end
  end
  def withdraw(pin_number, amount)
    if pin_number == pin
        @balance -= amount
        puts "Withdrew #{amount}. New balance: $#{@balance}."
    else
        puts pin_error
    end
  end

  private
  
  def pin
    @pin = 1234
  end
  
  def pin_error
    return "Access denied: incorrect PIN."
  end
end

# TASK2 Private Method
# Add two private methods to your Account class, pin and pin_error.pin should take no arguments and set an instance variable, @pin, equal to the PIN number 1234.
# pin_error should take no arguments and should simply return the string "Access denied: incorrect PIN."

# TASK3 DISPLAYING THE BALANCE LINE58
# Define a public display_balance method to your Account class. It should take a single parameter, pin_number.
# The body of your method should check whether the pin_number is equal to pin (the result of calling the private pin method)
# If it is, display_balance should puts "Balance: $#{@balance}."
# Otherwise (else), it should puts pin_error (the pin_error message).
# HINT
# Something important to note: you can explicitly declare your public methods public, or you can omit public and your methods will be public by default. However! If you don’t use public, you need to put your public methods before the private keyword, since private affects every method after it appears. If you put your public methods below private and don’t label them public, they’ll be private, too!

# TASK4 MAKING A WITHDRAWAL
# Well done! Now let’s add in our second public method, which will allow us to withdraw money from our account.
# The trick to this one is to realize that since @balance can only be accessed from inside the class, we’ll want to use @balance -= amount to decrease the balance by a certain amount.
# Add a public withdraw method to your class that takes two parameters, pin_number and amount. If pin_number matches pin, your method should subtract the amount from the balance and puts "Withdrew #{amount}. New balance: $#{@balance}." Otherwise, it should puts pin_error.


