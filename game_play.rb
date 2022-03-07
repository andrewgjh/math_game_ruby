class GamePlay 
  attr_accessor :player_list, :current_player
  def initialize()  
    @player_list = [] 
  end

  def start
    more_players = true
    want_to_play = true
    while(player_list.length < 1 || more_players)
    @player_list.push(get_player(lives))
      if(player_list.length > 1)
       puts "Do you wish to add more players y/n" 
       response = gets.chomp
       more_players = false if response == "n"
      end
    end
    while(want_to_play)
      player_list.cycle { |player|
        turn = Turn.new(player)
        player = turn.start
        puts current_score
        break if player.lives == 0 
      }
      reset
      puts "Do you wish to play again? y/n"
      play_again = gets.chomp
      want_to_play = false if play_again == "n"
    end

  end

  def reset
    player_list.each{ |player|
    player.reset_lives
    }
  end

  def current_score
    life_count = ["Lives Remaining"] 
    player_list.each { |player|
     life_count.push("#{player.name}:#{player.lives}")
    }
    life_count.join('--')
  end

  def get_player
    puts "Please enter a username:"
    name = gets.chomp.capitalize
    return Player.new(name, lives) 
  end

end
