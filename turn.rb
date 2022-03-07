class Turn 
  attr_accessor :current_player
  def initialize(current_player)
    @current_player = current_player
  end

  def start
    question = Question.new
    puts "=====================NEW TURN ======================"
    puts "#{current_player.name}'s Turn: #{question.prompt}"
    response = gets.chomp.to_i
      if (response == question.solution)
        puts 'Correct'
        return current_player
      else
        current_player.lose_life
        puts "Incorrect"
        return current_player
      end
    end

end
