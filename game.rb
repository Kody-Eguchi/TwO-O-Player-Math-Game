class Game
  def initialize(player_one, player_two)
    @player_one = player_one
    @player_two = player_two
    @current_player = player_one
  end

  def set_current_player
    if @current_player = player_one
      @current_player = player_two
    else
      @current_player = player_one
    end
  end

  def generate_question
    num_one = rand(20)
    num_two = rand(20)
    puts "What does #{num_one} plus #{num_two} equal?"
  end


  def players_alive?
    # check if players 1 score and players 2 score are 0
  end

  # game loop logic
  def play_game
    #while players_one.score >0 && player_two.score > 0
      #generate q
      #recieve user input
      #check answer
      #condition correc => nothing, wrong subtract score
  end

  def answer_is_correct?
    
  end
end