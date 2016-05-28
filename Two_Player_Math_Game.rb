require 'pry'

@player1_health = 3
@player2_health = 3

def question
  random = rand(1..20)
  number1 = random
  number2 = random
  @answer = number1 + number2
  puts "What is #{number1} + #{number2}"
  @input = gets.chomp.to_i
end

def answer(x)
  if x == @answer
    puts "Correct!"
  else
    puts "Incorrect"
    return false
  end 
end

def player_1_question
  puts "Player 1, your turn"
  question
  if answer(@input) == false
    @player1_health -= 1
  end
end


def player_2_question
  puts "Player 2, your turn"
  question
  if answer(@input) == false
    @player2_health -= 1
  end 
end

def end_game
if @player1_health == 0
  puts "Player 2 has won!"
elsif @player2_health == 0
  puts "Player 1 has won!"
else
  return
end
end


while (@player1_health > 0) && (@player2_health > 0) do
player_1_question
player_2_question
end

puts "#{end_game}"
puts "Player 1's health is #{@player1_health}"
puts "Player 2's health is #{@player2_health}"


