class Player 
  @@number_of_players = 0
  attr_accessor :lives
  attr_reader :name
  def initialize(name, lives = 3 )
    @@number_of_players += 1
    @name = name
    @lives = lives
  end

  def lose_life
    @lives -= 1
  end
  
  def reset_lives
    @lives = 3
  end


end
