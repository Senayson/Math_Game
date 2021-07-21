require 'active_support/all'
require './question'
require './player'
require './game'

#Players
P1 = Player.new("P1")
P2 = Player.new("P2")

players = [P1, P2]

  def start_game(players)
   
    game = Game.new(players)
    game.perform
     
  end


    
start_game(players)




