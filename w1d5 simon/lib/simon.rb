class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @seq = []
    @sequence_length = 1
    @game_over = false
  end

  def play
    until game_over
      take_turn
    end
    game_over_message
    reset_game
  end

  def take_turn
    show_sequence
    require_sequence
    unless game_over
      round_success_message
      @sequence_length += 1
    end
  end

  def show_sequence
    add_random_color
    system("clear")
    @seq.each do |color|
      puts color
      sleep 1.0
      system("clear")
      sleep 0.25
    end
  end

  def require_sequence
    puts "Enter colors one at a time"
    seq.each do |color|
      guess = gets.chomp
      @game_over = true if guess != color
    end
  end

  def add_random_color
    @seq << COLORS.shuffle[0]
  end

  def round_success_message
    puts "Yay."
  end

  def game_over_message
    puts "You lose. Good day, sir. #{sequence_length} turns"
  end

  def reset_game
    @game_over = false
    @sequence_length = 1
    @seq = []
  end
end
