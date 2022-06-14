## HIDDEN INFORMATION
class Person
    def initialize(name, age)
      @name = name
      @age = age
    end
    
    public    # This method can be called from outside the class.
    
    def about_me
      puts "I'm #{@name} and I'm #{@age} years old!"
    end
    
    private   # This method can't!
    
    def bank_account_number
      @account_number = 12345
      puts "My bank account number is #{@account_number}."
    end
end
  
eric = Person.new("Eric", 26)
eric.about_me
eric.bank_account_number

# You might be wondering why we need to hide information in Ruby. Isn’t it okay for every part of your Ruby program to know what every other part is doing?
# Possibly, if you’re the only one writing and using your software. But when other people are working on or using your programs, they may attempt to muck around with the way different parts of your program do their jobs. You don’t want that!
# For this reason, Ruby allows you to explicitly make some methods public and others private. Public methods allow for an interface with the rest of the program; they say, “Hey! Ask me if you need to know something about my class or its instances.”
# Private methods, on the other hand, are for your classes to do their own work undisturbed. They don’t want anyone asking them anything, so they make themselves unreachable!
# the code above. We’ve created a public about_me method and a private bank_account_number method. Click Run to see what happens when we try to call the bank_account_number method from outside the class!

# TASK2 Build a Class
class ClassName
    def method_name(parameter)
      @class_variable = parameter
    end
end
  
# 1 First we tell Ruby that we want to construct our class ClassName. Don’t forget the end to end your class!
# 2 Inside our ClassName is where we define our methods. Here we have method_name followed by (parameter), When we use this method it will look like this method_name("hello!")
# 3 If our parameter above were “Hello!” it would be assigned to our variable @class_variable on the following line.
# 4 Again, don’t forget to end your method_name!
# - First, create a class named Dog
# - Create a method initialize within your class Dog.
# - Allow your initialize method to accept two parameters, name and breed.
# - Inside your initialize method assign those two parameters to the variables @name and @breed respectively

# HINT
#Remember, we can create a class using the class keyword:
class MyClass
  def initialize(params)
    @params = params
  end
end
