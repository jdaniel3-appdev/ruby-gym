# The program should:
#   Ask the user to input a year (Say 2016)
#   Determine if the given year is a leap year
#   If the given year is a leap year print, "2016 is a leap year!"
#   Otherwise print, "2015 is not a leap year."

# Hint:
#   To determine whether a year is a leap year, follow these steps:

#   1. If the year is divisible by 4, go to step 2. Otherwise, go to step 5.
#   2. If the year is divisible by 100, go to step 3. Otherwise, go to step 4.
#   3. If the year is divisible by 400, go to step 4. Otherwise, go to step 5.
#   4. The year is a leap year (it has 366 days).
#   5. The year is not a leap year (it has 365 days).

p "Enter a year:"

input_year = gets.chomp.to_i

# Step 1
if input_year % 4 == 0
  # Step 2
  if input_year % 100 == 0
    # Step 3
    if input_year % 400 == 0
      # Step 4
      p input_year.to_s + " is a leap year!"
    else
      # Step 5
      p input_year.to_s + " is not a leap year."
    end
  else
    # Step 4
    p input_year.to_s + " is a leap year."
  end
else
  # Step 5
  p input_year.to_s + " is not a leap year."
end
