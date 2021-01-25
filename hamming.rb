# Calculate the Hamming difference between two DNA strands.

# A mutation is simply a mistake that occurs during the creation or copying of a nucleic acid, in particular DNA.
#   Because nucleic acids are vital to cellular functions, mutations tend to cause a ripple effect throughout the cell.
#   Although mutations are technically mistakes, a very rare mutation may equip the cell with a beneficial attribute.
#   In fact, the macro effects of evolution are attributable by the accumulated result of beneficial microscopic
#   mutations over many generations.

# The simplest and most common type of nucleic acid mutation is a point mutation,
#   which replaces one base with another at a single nucleotide.

# By counting the number of differences between two homologous DNA strands taken from different genomes
#   with a common ancestor, we get a measure of the minimum number of point mutations that could have
#   occurred on the evolutionary path between the two strands.

# This is called the 'Hamming distance'.

# It is found by comparing two DNA strands and counting how many of the nucleotides
#   are different from their equivalent in the other string.

# GAGCCTACTAACGGGAT
# CATCGTAATGACGGCCT
# ^ ^ ^  ^ ^    ^^

# The Hamming distance between these two DNA strands is 7.

# Your Job
# Define a class called `Dna` with an attribute accessor called `strand`
# and an instance method called `distance_between` that accepts
# a different instance of the `Dna` class, and returns an Integer.

# Example

#   g_dna = Dna.new
#   g_dna.strand = "G"
#   t_dna = Dna.new
#   t_dna.strand = "T"

#   p g_dna.distance_between(t_dna) # => 1

class Dna
  attr_accessor :strand

  def distance_between(other_strand)
    distance = 0
    this_strand = self.strand.upcase.split("")
    other_strand_compare = other_strand.strand.upcase.split("")

    counter = 0 
    while counter <= other_strand_compare.length - 1
      if other_strand_compare[counter] != this_strand[counter]
        distance = distance + 1
      elsif other_strand_compare[counter] == this_strand[counter]
        distance = distance
      end
      counter = counter + 1
     
    end
    # return this_strand
    # return other_strand_compare
    return distance

  end
end

g_dna = Dna.new
g_dna.strand = "GGACGGATTCTG"
t_dna = Dna.new
t_dna.strand = "AGGACGGATTCT"

p g_dna.distance_between(t_dna)
