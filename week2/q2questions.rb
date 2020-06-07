#---solution

# def solution(digits)
#   digits.chars.each_cons(5).max_by(&:itself).join.to_i
# end



# whats max_by(&:itself)?


# def solution(digits)
#   digits.chars.each_cons(3).map{|arr| arr.join.to_i}.max
 digits '134679'
 digits.chars = ['1', '3', '4', '6', '7', '9']
#  digits.split("") = 
 digits.chars.(3) =  [[346],[467],[679]]
 digits.chars.each_cons(3).map{|arr| arr.join.to_i} = 123,346,467,679
# end

#why loop twice with each and map?

def ho_each_cons(array, num)
  result = []
  
  for i in 0...(array.length - num) do
    result.push(array[i...(i+num)])
  end
  result
end



    # [1, 2, 3, 4, 5, 6, 7, 8]
    #  2

ho_each_cons
# each_cons(n) { ... } → nil
# each_cons(n) → an_enumerator
# Iterates the given block for each array of consecutive <n> elements. 
# If no block is given, returns an enumerator.

# e.g.:

# (1..10).each_cons(3) { |a| p a }
# outputs below
[1, 2, 3]
[2, 3, 4]
[3, 4, 5]
[4, 5, 6]
[5, 6, 7]
[6, 7, 8]
[7, 8, 9]
[8, 9, 10]

# def solution(digits)
#   result = 0
#   digits.size.times do |n|
#     new_number = digits[n...(n + 5)].to_i
#     result = new_number if new_number > result
#   end
#   result
# end
# why size.times?

# p solution("123456789")

# word = "giraffe"
# guess = ""
# guess_count = 0
# guess_max = 3
# out_of_guesses = false

# while guess != word and out_of_guesses == false
#   if guess_count < guess_max 
#     puts "Guess the word:" 
#     guess = gets.chomp
#     guess_count += 1
#   else
#     out_of_guesses = true
#   end
# end



# if out_of_guesses == false
#   puts "you won"
# else
#   puts "you lose"
# end
# contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
# contacts = {"Joe Smith" => {}}
# fields = [:email, :address, :phone]

# contacts.each do |name, hash|
#   fields.each do |field|
#     hash[field] = contact_data.shift
#   end
# end
# p contacts

puts "Hello\n\nworld"