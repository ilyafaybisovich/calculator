#a great update for remote repo

def say(message)
  puts "=> #{message}"
end
say("What is the first number?")
num1 = gets.chomp
say("What is the second number?")
num2 = gets.chomp
say("Choose operation: 1) add 2) subtract 3) multiply 4) divide")
operation = gets.chomp
while operation != "1" && operation != "2" && operation != "3" && operation != "4" 
  say("Unrecognized operation. Please pick one of the 4 basic operations.")
  operation = gets.chomp
end
case operation
when "1"
  result = num1.to_i+num2.to_i
when "2"
  result = num1.to_i-num2.to_i  
when "3"
  result = num1.to_i*num2.to_i
when "4"
  while num2.to_i == 0 
    say("Can't divide by 0, pick a different second number.")
    num2 = gets.chomp
  end
  result = num1.to_f/num2.to_f
end
say("The result is #{result}")