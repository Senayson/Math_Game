class Player
  
  def initialize(name)
    @name = name
    @lives = 3
  end

  attr_accessor :name, :lives

def reduce_life
  @lives -= 1;
end

end

#Players
P1 = Player.new("P1")
P2 = Player.new("P2")

players = [P1, P2]

class Question
  def initialize()
    @num1 = (rand() * 10).round()
    @num2 = (rand() * 10).round()
    @answer = @num1 + @num2
  end
  attr_accessor :num1, :num2, :answer
  def ask_Q()
   " What does  #{@num1}  +  #{@num2} equals?"
  end
  
  end

  def start_game(players)
    currentPlayer = players[0]
     game = true



    while(game) do
      question = Question.new
      puts currentPlayer.name + ": " + question.ask_Q()
      answer = gets.chomp()

      if(question.answer.to_i === answer.to_i)
        puts "#{currentPlayer.name}: Yes, You are correct."
        puts "P1: #{currentPlayer.lives}/3 vs P2:#{players[1].lives}/3"
        puts " ---- New turn ---- "
  
      else
        puts "#{currentPlayer.name}: Seriously! No!"
        currentPlayer.reduce_life
       puts " P1: #{players[0].lives}/3 vs P2:#{players[1].lives} /3"
       puts "New turn \n ---------- "
      end

      if(currentPlayer.lives === 0 )
        puts "#{currentPlayer.name} has lost"
        puts "Game Over"
        game = false
      end

      if(currentPlayer.name === "P1")
        currentPlayer = players[1]
      else
        currentPlayer = players[0]
      end
    end
  end

  start_game(players)




