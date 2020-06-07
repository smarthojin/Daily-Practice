# In the following 6 digit number:

# 283910
# 91 is the greatest sequence of 2 consecutive digits.

# In the following 10 digit number:

# 1234567890
# 67890 is the greatest sequence of 5 consecutive digits.

# Complete the solution so that it returns the greatest sequence of five consecutive digits 
# found within the number given. The number will be passed in as a string of only digits.
#  It should return a five digit integer. The number passed may be as large as 1000 digits.

# answer here------

#---solution

def solution(digits)
  digits.chars.each_cons(5).max_by(&:itself).join.to_i
end



def solution(digits)
  digits.chars.each_cons(5).map{|arr| arr.join.to_i }.max
end



def solution(digits)
  result = 0
  digits.size.times do |n|
    new_number = digits[n...(n + 5)].to_i
    result = new_number if new_number > result
  end
  result
end