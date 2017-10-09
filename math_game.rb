require './class_Round'
require './class_Player'
require './class_Problem'


#Welcome and player setup
players = []

puts "Welcome to Math Game!"
puts "Player 1, please input your name: "
player1 = Player.new(gets.chomp)
players.push(player1)
puts "Welcome, #{player1.name}"

puts "Player 2, please input your name: "
player2 = Player.new(gets.chomp)
players.push(player2)
puts "Welcome, #{player2.name}"

puts "Answer the problems to the nearest 0.5"

this_round = Round.new


#Gameplay
current_player = players[this_round.whos_turn] #establish first turn start
game_over_flag = false
while !game_over_flag do #as long as the current player has > 0 lives, keep playing

  puts "------NEW TURN------"

  new_problem = Problem.new #generate and ask random new problem
  new_answer = new_problem.form_problem(current_player.name)
  player_input = gets.chomp.to_f #take in player answer

  if !new_problem.correct?(new_answer, player_input)
    current_player.wrong_answer
    game_over_flag = this_round.game_over?(current_player.lives)
    puts "That is terribly incorrect"
  else
    puts "Nice job!"
    current_player.questions_correct += 1
  end
  puts "Score: #{player1.name}: #{player1.lives}/3 VS. #{player2.name}: #{player2.lives}/3"


  this_round.turn += 1 #at end of turn, increase turn number to trigger current_player switch
  current_player = players[this_round.whos_turn] #switch current player

end



#Game Over
  puts "------GAME OVER------"
  correct_qs = current_player.questions_correct
  remaining_lives = current_player.lives
  puts "#{current_player.name} wins with #{correct_qs} correct #{correct_qs == 1 ? 'answer' : 'answers'} and #{current_player.lives} #{remaining_lives == 1 ? 'life' : 'lives'} remaining"
  puts "Goodbye!"

