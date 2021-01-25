# We have a program to encode our messages, now can you write a way to decode them? 
# Remember our sercret code: a = 1, e = 2, i = 3, o = 4, u = 5.  
# Your program should:
# - ask for an encoded message
# - decode the message
# - print the decoded message.

# (Make sure to capitalize the first word in the decoded message)

p "Enter in the secret you want to decode"

sentence = gets.chomp.split("")

counter = 0

while counter <= sentence.length - 1
  if sentence[counter] == "1"
    sentence[counter] = "a"
  elsif sentence[counter] == "2"
    sentence[counter] = "e"
  elsif sentence[counter] == "3"
    sentence[counter] = "i"
  elsif sentence[counter] == "4"
    sentence[counter] = "o"
  elsif sentence[counter] == "5"
    sentence[counter] = "u"
  else
    sentence[counter] = sentence[counter]
  end
  counter = counter + 1
end

decoded_message = String.new

counter = 0

while counter <= sentence.length - 1
  decoded_message = decoded_message + sentence[counter]
  counter = counter + 1
end

p decoded_message.capitalize