#---solution

# def solution(digits)
#   digits.chars.each_cons(5).max_by(&:itself).join.to_i
# end

# whats max_by(&:itself)?



# def solution(digits)
#   digits.chars.each_cons(5).map{|arr| arr.join.to_i}.max
# end

#why loop twice with each and map?



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