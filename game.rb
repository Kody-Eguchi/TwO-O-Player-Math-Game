class Game
  def initialize(player_one, player_two)
    @player_one = player_one
    @player_two = player_two
    @current_player = player_one
  end

  def switch_current_player
    if @current_player == @player_one
      @current_player = @player_two
    else
      @current_player = @player_one
    end
  end

  def generate_num
    num_one = rand(1..20)
    num_two = rand(1..20)

    [num_one, num_two]
  end

  def answer_is_correct?(num_one, num_two, answer)
    num_one + num_two == answer
  end

  
  def play_game
    while @player_one.score != 0 or @player_two.score != 0
      num_one, num_two = generate_num
      puts "Current Player: #{@current_player.name}'s turn"
      puts "What does #{num_one} plus #{num_two} equal?"
      answer = gets.chomp.to_i

      if answer_is_correct?(num_one, num_two, answer)
        puts 'Correct!'
      else
        puts "Incorrect, #{@current_player.name} loses 1 point"
        if @current_player == @player_one
          @player_one.score -= 1
        elsif @current_player == @player_two
          @player_two.score -= 1
        end
      end
      puts "#{@player_one.name}: #{@player_one.score}/3 vs #{@player_two.name}: #{@player_two.score}/3"
      switch_current_player
      if @player_one.score == 0
        puts "#{@player_one.name} lost"
        puts '---------------------------------------------'
        break
      end
      if @player_two.score == 0
        puts "#{@player_two.name} lost"
        puts '---------------------------------------------'
        break
      end
      puts '---------------------------------------------'
    end
    
  end
end
