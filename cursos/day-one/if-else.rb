cars = [] # variable declaration, no type
# Ruby is not forcefully typed

if cars.size > 0 # good, but...
  puts "No cars at all"
end

if cars.empty? # that's better, let's call it more "rubyish"
  puts "No cars at all" # this is how to print to console
end

# more rubyish conditions
puts cars.empty? # true
puts cars.nil? # false

number_of_wheels = 4 # that's an Integer
puts number_of_wheels.to_f # prints 4.0. WTF? An Integer with a method? That's an object!

cars = [number_of_wheels] # overrides variable

if ! cars.empty? # good, but not rubyish
  puts "There are some cars in here"
end

unless cars.empty? # more literal, more rubyish
  puts "There are some cars in here"
end

# How about null? Or better, nil?

if nil # yeah
  "Nil is False" # WTF?
end

# but...
if 0
  "That's true"
end

if ""
  "That's also true"
end

# how about
if []
  "True too"
end

# Ruby have inlines too
name = "A"
fail "That is too short for a name" if "A".length < 3 # This will raises an RuntimeError

puts "A".length < 3 ? "That is too short for a name" : "The (:) is mandatory in this syntax"

#
