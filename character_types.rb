# Write a program that:
#   Asks the user to enter a sentence
#   Counts the total number of letters in the given sentence
#   Counts the total number of spaces in the given sentence
#   Counts the total numbers of digits in the given sentence
#   and prints the intormation out

# Example:

#  "Enter a sentence:"
#  here 12 plus 25
#  "Number of letters in the string is: 8"
#  "Number of spaces in the string is: 3"
#  "Number of digits in the string is: 4"

p "Enter a sentence:"

sentence_all = gets.chomp.downcase.split("")
nr_spaces = sentence_all.count(" ")

sentence_digits = sentence_all.slice(0 .. -1)
counter = 0
nr_digits = 0

while counter <= sentence_digits.length - 1
  if sentence_digits[counter].match?(/[[:alpha:]]/) || sentence_digits[counter] == " "
    sentence_digits[counter] = ""
  else
    sentence_digits[counter] = sentence_digits[counter]
    nr_digits = nr_digits + 1
  end
  counter = counter + 1
end


sentence_letters = sentence_all.slice(0 .. -1)
counter = 0
nr_letters = 0

while counter <= sentence_letters.length - 1
  if sentence_letters[counter].match?(/[[:digit:]]/) || sentence_letters[counter] == " "
    sentence_letters[counter] = ""
  else
    sentence_letters[counter] = sentence_letters[counter]
    nr_letters = nr_letters + 1
  end
  counter = counter + 1
end

p "Number of letters in the string is: " + nr_letters.to_s
p "Number of spaces in the string is: " + nr_spaces.to_s
p "Number of digits in the string is: " + nr_digits.to_s

