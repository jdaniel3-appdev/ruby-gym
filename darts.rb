# Write a program that prints the earned points of a single toss of a Darts game.

# Darts is a game where players throw darts to a target.

# In our particular instance of the game, the target rewards with 4 different amounts of points,
#  depending on where the dart lands.

# If the dart lands:
#  outside the target: 0 points.
#  in the outer circle of the target: 1 point.
#  in the middle circle of the target: 5 points.
#  in the inner circle of the target: 10 points.
#  The outer circle has a radius of 10 units
#    (This is equivalent to the total radius for the entire target),
#    the middle circle a radius of 5 units, and the inner circle a radius of 1.
#    They are all centered to the same point (That is, the circles are concentric) defined by the coordinates (0, 0).

# Write a program that asks for a point in the target
#  (defined by its real Cartesian coordinates x and y),
#  prints the correct amount earned by a dart landing in that point.

# Example

#  "Enter X,Y coordinates in the format 'X,Y'"
#  10,10
#  0 points

# Hint: the formula to find a circle with the center point (j, k) and radius (r):
#     (x-j)^2 + (y-k)^2 = r^2

p "Enter X,Y coordinates in the format 'X,Y'"

coordinates = gets.chomp.split(",")

counter = 0

while counter <= coordinates.length - 1
  coordinates[counter] = coordinates[counter].to_f
  counter = counter + 1
end

x = coordinates[0]
y = coordinates[1]
score = Float

if (x ** 2) + (y ** 2) <= (1 ** 2)
  score = 10
elsif (x ** 2) + (y ** 2) <= (5 ** 2)
  score = 5
elsif (x ** 2) + (y ** 2) <= (10 ** 2)
  score = 1
else 
  score = 0
end

p score.to_s + " points"