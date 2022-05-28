### Why Methods?
# A method is a reusable section of code written to perform a specific task in a program. You might be wondering why you need to separate your code into methods, rather than just writing everything out in one big chunk. It turns out there are a few good reasons to divide your programs into methods:
# If something goes wrong in your code, it’s much easier to find and fix bugs if you’ve organized your program well. Assigning specific tasks to separate methods helps with this organization.
# By assigning specific tasks to separate methods (an idea computer scientists call separation of concerns), you make your program less redundant and your code more reusable—not only can you repeatedly use the same method in a single program without rewriting it each time, but you can even use that method in another program.
# When we learn more about objects, you’ll find out there are a lot of interesting things we can do with methods in Ruby.

def prime(n)
    puts "That's not an integer." unless n.is_a? Integer
    is_prime = true
    for i in 2..n-1
      if n % i == 0
        is_prime = false
      end
    end
    if is_prime
      puts "#{n} is prime!"
    else
      puts "#{n} is not prime."
    end
  end
  
  prime(2)
  prime(9)
  prime(11)
  prime(51)
  prime(97)
  