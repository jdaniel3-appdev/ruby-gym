# Determine if a word or phrase is an isogram.

# An isogram (also known as a "nonpattern word") is a word or phrase without a repeating letter,
#   however spaces and hyphens are allowed to appear multiple times.

# Examples of isograms:

# lumberjacks
# background
# downstream
# six-year-old

# The word isograms, however, is not an isogram, because the s repeats.

# Your Job
# Define a class called String with a class method called isogram? that accepts one String argument, and returns true or false.

# Example

#   String.isogram?("eleven") # => false
#   String.isogram?("subdermatoglyphic") # => true

# p "Enter a word"
# user_word = gets.chomp.downcase

class String
  def String.isogram?(input_word)
    input_word = input_word.downcase
    
    letter_count_array = Array.new
    letter_count_array.push(input_word.count("a"))
    letter_count_array.push(input_word.count("b"))
    letter_count_array.push(input_word.count("c"))
    letter_count_array.push(input_word.count("d"))
    letter_count_array.push(input_word.count("e"))
    letter_count_array.push(input_word.count("f"))
    letter_count_array.push(input_word.count("g"))
    letter_count_array.push(input_word.count("h"))
    letter_count_array.push(input_word.count("i"))
    letter_count_array.push(input_word.count("j"))
    letter_count_array.push(input_word.count("k"))
    letter_count_array.push(input_word.count("l"))
    letter_count_array.push(input_word.count("m"))
    letter_count_array.push(input_word.count("n"))
    letter_count_array.push(input_word.count("o"))
    letter_count_array.push(input_word.count("p"))
    letter_count_array.push(input_word.count("q"))
    letter_count_array.push(input_word.count("r"))
    letter_count_array.push(input_word.count("s"))
    letter_count_array.push(input_word.count("t"))
    letter_count_array.push(input_word.count("u"))
    letter_count_array.push(input_word.count("v"))
    letter_count_array.push(input_word.count("w"))
    letter_count_array.push(input_word.count("x"))
    letter_count_array.push(input_word.count("y"))
    letter_count_array.push(input_word.count("z"))

    input_word_letters = input_word.length - input_word.count("'")
    input_word_letters = input_word_letters - input_word.count("-")
    input_word_letters = input_word_letters - input_word.count(" ")

    return letter_count_array.count(1) == input_word_letters
  end
end

# p String.isogram?(user_word)