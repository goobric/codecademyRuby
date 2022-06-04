### What You'll Be Fixing

# We’re going to reinforce our knowledge of Ruby best practices by refactoring some existing code. As mentioned, refactoring is the process by which we improve a code’s structure, appearance, and/or performance without modifying its overall behavior.
# The code in the editor is a Ruby method, first_n_primes, that takes a number n and generates a list of the first n prime numbers. Unfortunately, our poor author hasn’t yet mastered all the tools available in Ruby. But we can fix that!

require 'prime'   # This is a module. We'll cover these soon!

def first_n_primes(n)

  unless n.is_a? Integer
    return "n must be an integer."
  end

  if n <= 0
    return "n must be greater than 0."
  end
  
  return Prime.first n
end

first_n_primes(10)

### Omit Needless Words
# One of the most common suggestions when it comes to writing is to omit needless words, and it applies just as much to writing Ruby as writing stories.
# There are two control structures to change here:
# The unless block:

unless n.is_a? Integer
    return "n must be an integer."
end

# The if block below the unless block:

if n <= 0
    return "n must be greater than 0."
end

# Both blocks can be simplified using the zen of Ruby!

