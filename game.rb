require 'terminal-table'
require_relative 'board'
require_relative 'user'
require_relative 'opponent'
class Game
  attr_accessor :a, :b, :c, :board, :user, :opponent
  def initialize
    @a = []
    @b = []
    @c = []
    @board = Board.new
    @user = User.new
    @opponent = Opponent.new
  end
  def start
    for i in 1..3
      a[i] = ' '
      b[i] = ' '
      c[i] = ' '
    end

    user.get_name
    opponent.get_name

    while true
      puts "\n\n"
      puts board.render(a, b, c)
      if (a[1..3] && b[1..3] && c[1..3]) == ['x','x','x']
        puts "Board is filled, that's game!"
        exit
      end
      user.validr = ''

      puts "#{user.player_1}, where you want the X at?"
      user.get_position
      user.mark_x(a, b, c)
      puts board.render(a, b, c)


      puts "\n#{opponent.player_2}, where you want the O at?"
      opponent.get_position
      opponent.mark_o(a, b, c)
      puts board.render(a, b, c)

      if user.validr != true
        puts "\nInvalid input, try again!\n\n"
      end
    end
  end
end
