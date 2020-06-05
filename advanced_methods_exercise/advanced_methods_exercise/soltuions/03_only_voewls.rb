# Write a method, `only_vowels?(str)`, that accepts a string as an arg.
# The method should return true if the string contains only vowels.
# The method should return false otherwise.



















def only_vowels?(str)
   vowels = "aeiou"
   str.split("").all? { |char| vowels.include?(char)}
  #  split method splits, all method loops through array with a conditional and returns boolean 
  #  based on whether or not all elements of the 
  # array fits the conditional
end



p only_vowels?("aaoeee")  # => true
p only_vowels?("iou")     # => true
p only_vowels?("cat")     # => false
p only_vowels?("over")    # => false


