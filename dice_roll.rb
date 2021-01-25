# Write a program that:
# - Ask the user for a guess at what number the die will land on
# - generate a random dice roll (a number between 1 and 6).  
# - if the User guessed right, your program should print `You guessed correctly`  
# - if they didn't, you program should print `Shame on you. The die landed on x`

# Hint: Use the `rand` method for the dice roll.

p "Enter a guess:"

guess = gets.chomp.to_i
roll = rand(6) + 1

if guess == roll
  p "You guessed correctly"
else
  p "Shame on you. The die landed on " + roll.to_s
end
