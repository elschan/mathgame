# require 'mathgame_p1'
# require 'mathgame_p2'


@p1_lives = 3
@p2_lives = 3

def mathgame
random_num_1 = (rand(20) + 1) 
random_num_2 = (rand(20) + 1)
puts 'You lose Player One' if @p1_lives == 0 

puts 'Sorry you lose Player Two' if @p2_lives == 0
while (@p1_lives || @p2_lives) != 0
  puts " Player 1: What does #{random_num_1} + #{random_num_2} equal?"
  answer = gets
  if answer.to_i == random_num_1 + random_num_2
    puts 'yes! onto player 2'
    mathgame_p2
  else
    @p1_lives -= 1
    puts 'wrong! You lose a life.'
    mathgame_p2
  end
end
end



def mathgame_p2

random_num_1 = (rand(20) + 1) 
random_num_2 = (rand(20) + 1)


puts 'You lose Player One' if @p1_lives == 0 
puts 'Sorry you lose Player Two' if @p2_lives == 0


while (@p1_lives || @p2_lives) != 0
  puts " Player 2: What does #{random_num_1} + #{random_num_2} equal?"
  answer = gets
  if answer.to_i == random_num_1 + random_num_2
    puts 'yes! onto player 1'
    mathgame_p1
  else
    @p2_lives -= 1
    puts 'wrong! You lose a life.'
    mathgame_p1
  end
end


end





def mathgame_p1
random_num_1 = (rand(20) + 1) 
random_num_2 = (rand(20) + 1)

puts 'You lose Player One' if @p1_lives == 0 

puts 'Sorry you lose Player Two' if @p2_lives == 0

while (@p1_lives || @p2_lives) != 0
  puts " Player 1: What does #{random_num_1} + #{random_num_2} equal?"
  answer = gets

  if answer.to_i == random_num_1 + random_num_2
    puts 'yes! onto player 2'
    mathgame_p2
  else
    @p1_lives -= 1
    puts 'wrong! You lose a life.'
    mathgame_p2
  end
end
end

mathgame


