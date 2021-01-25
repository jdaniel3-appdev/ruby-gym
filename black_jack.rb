# Write a program to play a variety of BlackJack.
# The program should ask the user to input two numbers separated by a space, and it should print their sum.
#
# Here's the catch:
#  if the sum is greater than 21, return 0, unless one of the numbers is 11.
#  In such a case, the 11 should be 'converted' to a 1 to prevent the sum from being exceeded.
#
# For example, given a 11 and 13 as input, the 11 should be 'converted' into a 1 so the total sum will be 14.

p "Enter two number separated by spaces:"

played_hand = gets.chomp.split(" ")

counter = 0

while counter <= played_hand.length - 1
  played_hand[counter] = played_hand[counter].to_i
  counter = counter + 1
end

if played_hand.sum <= 21
  p played_hand.sum
elsif played_hand.include?(11)
  eleven = played_hand.index(11)
  played_hand[eleven] = 1
  if played_hand.sum <= 21
    p played_hand.sum
  else
    p 0
  end
else
  p 0
end
