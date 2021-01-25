# Write a program that: 
#   asks the user to enter a sentence.
#   then finds the number of times 'the' appears in the given string
#   and finally prints, "'the' appeared x times", where x is an Integer

# The, quick brown fox jumps over the lazy dog

p "Enter a sentence:"

sentence = gets.chomp.downcase.split(" ")

counter = 0

while counter <= sentence.length - 1
  sentence[counter] = sentence[counter].chomp(",")
  sentence[counter] = sentence[counter].chomp("-")
  counter = counter + 1
end

p sentence

nr_of_thes = sentence.count("the")

p "'the' appeared " + nr_of_thes.to_s + " times"