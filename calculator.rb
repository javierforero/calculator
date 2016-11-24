require_relative 'methods'

system "clear"

puts "Hi I'm a calculator.\nYou may enter expressions that multiply, divide, add, and subtract only.\nLike so 1+3/2*4. Please ommit parantheses\nType in the expression you want to evaluate:"

user_input = gets.chomp

if even_split(user_input)
  puts "Your expression evaluates to: #{even_split(user_input)}"
else
  "Incorrect inputs. Please try again"
end
