require 'active_support/all'
class Player
  
  def initialize(name)
    @name = name
    @lives = 3
    @questionsAsked = 0
  end

  attr_accessor :name, :lives, :questionsAsked

def reduce_life
  @lives -= 1;
end
def increment_Q
  @questionsAsked += 1;
end

end

