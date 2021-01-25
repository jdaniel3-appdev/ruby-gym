# Anagram - a word, phrase, or name formed by rearranging the letters of another.
#  For example, cinema is an anagram of iceman. 

# Your job is to write a program that receives two words from the user separated by a comma.
#  Your program should print "true" if the words are anagrams of each other and "false" if they are not. 

p "Enter two words separated by a comma"

user_words = gets.chomp.split(",")

u_w_1_sorted = user_words[0].split("").sort
u_w_1_sorted_nospace = Array.new
u_w_2_sorted = user_words[1].split("").sort
u_w_2_sorted_nospace = Array.new

u_w_1_sorted.each do |character|
  if character != " "
    u_w_1_sorted_nospace.push(character)
  else
    u_w_1_sorted_nospace = u_w_1_sorted_nospace
  end
end

u_w_2_sorted.each do |character|
  if character != " "
    u_w_2_sorted_nospace.push(character)
  else
    u_w_2_sorted_nospace = u_w_2_sorted_nospace
  end
end

p u_w_1_sorted_nospace == u_w_2_sorted_nospace

