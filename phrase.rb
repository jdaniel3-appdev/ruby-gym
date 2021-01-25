# Most commonly, we define classes to represent things; those things have attributes; and we define instance methods to operate on those attributes and return useful values.

# Phrase
# Convert a phrase to its acronym.

# Techies love their TLA (Three Letter Acronyms)!

# Help generate some jargon by writing a program that converts a long name like Portable Network Graphics to its acronym (PNG).
 
# Your Job
# Define a class called `Phrase` with:

# An attribute accessor called `body` which will store a String.
# An instance method called `abbreviate` that will return a String: the uppercase first letter of each word in the phrase.

# Examples

#   a = Phrase.new
#   a.body = "Portable Network Graphics"
#   a.abbreviate # => "PNG"

#   b = Phrase.new
#   b.body = "Complementary metal-oxide semiconductor"
#   b.abbreviate # => "CMOS"




class Phrase
  attr_accessor :body

  def abbreviate
    input_phrase = self.body.gsub("-"," ")
    input_phrase = input_phrase.split(" ")
    input_phrase_wordcount = input_phrase.length
    acronym = String.new
    counter = 0

    input_phrase_wordcount.times do
      acronym = acronym.concat(input_phrase[counter].split("")[0].upcase)
      counter = counter + 1
    end
  
    return acronym
  end
end

# p "Enter a phrase"
# user_phrase = Phrase.new
# user_phrase.body = gets.chomp

# p user_phrase.abbreviate
