class Question 
attr_accessor :current_player
def initialize  (current_player)
  @current_player = current_player
  # generate random numbers
  @number1 = rand(20)
  @number2 = rand(20)
end

#ask the current player a question 
def question_text
  @number1 = rand(20)
  @number2 = rand(20)
  puts "#{@current_player} : What is #{@number1} + #{@number2}"
end

#take the player's input and check against the correct one
def validate_answer (player_answer)
puts "#{player_answer} player's answer from questions  "
if player_answer == (@number1 + @number2)
puts "Yes. Your answer is correct. It is indeed #{(@number1 + @number2)} "
else 
  puts "Oops, sorry. Your answer is incorrect. It should be #{(@number1 + @number2)} "
end

end 

end 

