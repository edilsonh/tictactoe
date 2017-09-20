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
      opponent.validr = ''

      while user.validr != true
        puts "#{user.player_1}, where you want the X at?"
        user.get_position
        user.mark_x(a, b, c)
        if user.validr == true
          break
        end
        puts "\nInvalid input, try again!\n\n"
        puts board.render(a, b, c)
      end
      puts board.render(a, b, c)

      while opponent.validr != true
        puts "\n#{opponent.player_2}, where you want the O at?"
        opponent.get_position
        opponent.mark_o(a, b, c)
        if opponent.validr == true
          break
        end
        puts "\nInvalid input, try again!\n\n"
        puts board.render(a, b, c)
      end

    end
  end
end
