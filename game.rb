class Game 
  attr_accessor :players

  def initialize(players)
    @players = players
  end
#refactor without indexes 
  def is_game_over
    players[0].questionsAsked === players[1].questionsAsked &&
      (players[0].lives === 0 || players[1].lives === 0)
  end
#refactor with a method winner which returns player object or nil
  def print_result
    if((players[0].lives === 0) && (players[1].lives === 0))
      puts "Noone won!"
     
    elsif((players[0].lives === 0) && (players[1].lives > 0))
      puts "#{players[1].name} has won with a score of #{players[1].lives}/3"
   
    elsif((players[1].lives === 0) && (players[0].lives > 0))
      puts "#{players[0].name} has won with a score of #{players[0].lives}/3"

    end
    puts "---- Game Over ----"
    
  end

def curr_player
  return players[0]
end

  def take_turn
    player = players.shift()

    players.push(player)

  end


  def ask_question
    @question = Question.new
      curr_player.increment_Q
      puts curr_player.name + ": " + @question.ask_Q()
      @answer = gets.chomp()
  end

  def check_answer
    if(@question.answer.to_i === @answer.to_i)
      puts "#{curr_player.name}: Yes, You are correct."
      puts "P1: #{players[0].lives}/3 vs P2:#{players[1].lives}/3"


    else
      puts "#{curr_player.name}: Seriously! No!"
      curr_player.reduce_life()
     puts " P1: #{players[0].lives}/3 vs P2:#{players[1].lives} /3"

    end
  end


  def perform
    while(!is_game_over) do
      ask_question
      check_answer     
      take_turn
    end
    print_result
  end


end 