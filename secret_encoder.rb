# Write a program that
#   asks the user for a secret message
#   and 'encode's the message by replacing vowels with other characters
#   Here is our secret code, don't tell anyone... a = 1, e = 2, i = 3, o = 4, u = 5

# Your program should print the encoded message.

p "Enter in the secret you want to encode"

sentence = gets.chomp.split("")

counter = 0

while counter <= sentence.length - 1
  if sentence[counter] == "a" || sentence[counter] == "A"
    sentence[counter] = "1"
  elsif sentence[counter] == "e" || sentence[counter] == "E"
    sentence[counter] = "2"
  elsif sentence[counter] == "i" || sentence[counter] == "I"
    sentence[counter] = "3"
  elsif sentence[counter] == "o" || sentence[counter] == "O"
    sentence[counter] = "4"
  elsif sentence[counter] == "u" || sentence[counter] == "U"
    sentence[counter] = "5"
  else
    sentence[counter] = sentence[counter]
  end
  counter = counter + 1
end


encoded_message = String.new

counter = 0

while counter <= sentence.length - 1
  encoded_message = encoded_message + sentence[counter]
  counter = counter + 1
end

p encoded_message
