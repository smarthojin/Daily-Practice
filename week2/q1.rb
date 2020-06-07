# Task
# Create a function called one that accepts two params:

# a sequence
# a function
# and returns true only if the function in the params returns true for exactly one (1) item in the sequence.

# Example
# one([1, 3, 5, 6, 99, 1, 3], bigger_than_ten) -> true
# one([1, 3, 5, 6, 99, 88, 3], bigger_than_ten) -> false
# one([1, 3, 5, 6, 5, 1, 3], bigger_than_ten) -> false

# answer here 
def one(seq, func)
  seq.each_num {|num|
   return true if num > 10}
end






#sotuion ---- 
def one? list, &block
  list.one?(&block)
end


def one?(list, &block)
  return false unless list
  list.one?(block)
end



def one? list, &block
 counter = 0 
 list.each do |item|
  if block.call item
   counter += 1 
  end
  if counter > 1 
   return false 
  end
 end
 counter == 1 
end


def one? (list, &block)
     n = []
     list.each { |i| n << i if  block.call(i) }
     n.size == 1
end