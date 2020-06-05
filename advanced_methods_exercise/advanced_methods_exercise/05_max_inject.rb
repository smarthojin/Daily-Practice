# Write a method, max_inject(arr), that accepts any amount of numbers arguments and returns
# the largest number. Solve this using the built-in inject.


def max_inject(*arr)
    arr.inject {|num,num2| 
    if num > num2
        num
    else
        num2 
    end
    }
end


p max_inject(1, -4, 0, 7, 5)  # => 7
p max_inject(30, 28, 18)      # => 30
