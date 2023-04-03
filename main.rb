require './player'
require './game'

koji = Player.new("Koji")
jake = Player.new('Jake') 
gameOne = Game.new(koji, jake)
gameOne.play_game



