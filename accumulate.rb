# Add some code to this program so that it:
#  prints the history of answers given while being pestered whether we're there yet.

# Note: all the recorded answers should be lowercase

p "Are we there yet?"

answers = Array.new
answer = gets.chomp.downcase
answers.push(answer)

while answer != "yes"
  p "Are we there yet?"
  
  answer = gets.chomp.downcase
  answers.push(answer)
end

if answer == "yes"
  p answers
end
