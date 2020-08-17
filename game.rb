require 'pp'
require './player'
require './main'
require './questions'

class Game
attr_accessor :current_player

def initialize
  # create 2 players
@player1 = Player.new("Player 1 Kate")
@player2 = Player.new("Player 2 Mike")
@current_player=@player1
end
# play method - main game loop 
def play 
  puts "--------------------"
  puts "    Game starts     "
  puts "--------------------"
  p "#{current_player.name}, get ready for your question"


  # initialize a  question 
question = Question.new(current_player.name)
print question.question_text
# Propmt for player's answer
answer = gets.chomp.to_s
puts "You answer is #{answer}. Let's check if it's the correct one..."
# check if the answer is right
 # player will loose a live (-1) for wrong answer
if question.validate_answer(answer) == false
puts "We are taking 1 life from your lives"
@current_player.lives -=1
end

puts "This is how many lives left for #{@current_player.name} ----- #{@current_player.lives}"
# switching turns 
@current_player==@player1 ? @current_player = @player2 : @current_player = @player1
puts "Now switching turns, #{current_player.name} is playing now"
puts "This is how many lives left for the other player #{@current_player.name} ----- #{@current_player.lives}"

 # check if game_over, someone has 0 lives?

 

  #who is the winner
end




end

game1 = Game.new

p game1.play
 



 
