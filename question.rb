
class Question
  attr_accessor :num1, :num2, :answer
  def initialize()
    @num1 = (rand() * 10).round()
    @num2 = (rand() * 10).round()
    @answer = @num1 + @num2
  end
  def ask_Q()
   " What does  #{@num1}  +  #{@num2} equals?"
  end
  
end