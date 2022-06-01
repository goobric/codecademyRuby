### Ruby is a Delight

# As a language, Ruby prioritizes programmer productivity over program optimization. This means that Ruby may not always run a program in the fastest way possible, but it strives to be a language that programmers (like you!) find easy and fun to use. The more intuitive a language’s syntax is, the more productive its users can be. You’re in control, not the machine!

# Check out the code in the editor. It looks almost like English, doesn’t it?

ruby_is_eloquent = true
ruby_is_ugly = false

puts "Ruby is eloquent!" if ruby_is_eloquent
puts "Ruby's not ugly!" unless ruby_is_ugly

# Output
# Ruby is eloquent!
# Ruby's not ugly!

## A Simpler 'If'

# You’ve seen the Ruby if statement before:

if condition
  # Do something!
end

# If the “do something” is a short, simple expression, however, we can move it up into a single line (as you saw in the last exercise). The syntax looks like this:

expression if boolean

# Ruby will expect an expression followed by if followed by a boolean. The order is important. You can do this:

puts "It's true!" if true

# but not this:

if true puts "It's true!"

# It’s also important to note that you don’t need an end when you write your if statement all on one line.
# TASK: Give it a go! Type a one-line if statement in the editor to the right. It can be whatever you like.
# You can try a simple one-liner, like this:
puts "Hello!" if true

# which is the same as:
rb if true puts "Hello!" end

# Type your Ruby code below!
puts "Hello coders!" if true

## The One-Line Unless

# You can do the exact same thing with the unless statement. The order is the same as before: something for Ruby to do, the unless keyword, and then an expression that evaluates to true or false.

# Remember, you don’t need an end when you write a one-line if or unless!
# TASK: Go ahead and type a one-line unless statement in the editor to the right. It can be whatever you like.
# You can try a simple one-liner, like this:

puts "Hello!" unless false

# which is the same as:

rb unless false puts "Hello!" end

# Type your Ruby code below!
puts "Let us make some code" unless false

