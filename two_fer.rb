
# Two-fer or 2-fer is short for two for one. One for you and one for me.

# "One for X, one for me."
# When X is a name or "you".

# If the given name is "alice", the result should be "One for Alice, one for me." 

# If no name is given, the result should be "One for you, one for me."

p "Enter a name:"

name = gets.chomp.downcase

if name == "you" || name == ""
  p "One for you, one for me."
else
  p "One for " + name.capitalize + ", one for me."
end