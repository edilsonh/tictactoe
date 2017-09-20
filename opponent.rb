require_relative 'game'
class Opponent
  attr_accessor :validr, :player_2
  def initialize
    @validr = ''
  end

  def get_name
    puts "Player 2, what is your name?"
    @player_2 = gets.chomp
  end
end
