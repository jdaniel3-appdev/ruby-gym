# Write a program that receives any amount of numbers from a user separated by spaces.
# The program should then print the sum of the odd numbers.  

# For example, if the user were to enter "9 5 4" 
# the program should only sum the "9" and the "5", because those are odd numbers, and print a sum of 14.  

# The excepted output would be similar to this below: 

# Enter at least 2 numbers separated by spaces: 
# 3 7 5 8 1 
# 16

p "Enter at least 2 numbers, separated by spaces:"

user_input = gets.chomp.split(" ")

counter = 0

while counter <= user_input.length - 1
  user_input[counter] = user_input[counter].to_i
  counter = counter + 1
end

counter = 0
sum_odd = 0

while counter <= user_input.length - 1
  if user_input[counter].odd?
    sum_odd = sum_odd + user_input[counter]
  else
    sum_odd = sum_odd
  end
  counter = counter + 1
end

p sum_odd