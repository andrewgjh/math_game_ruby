require './game_play.rb'
require './player.rb'
require './turn.rb'
require './question.rb'

while(true)
  game = GamePlay.new
  puts "------Welcome to Math is Fun------"
  game.start
  puts "Type 'exit' to leave Game Play"
  break if gets.chomp == 'exit' 
end