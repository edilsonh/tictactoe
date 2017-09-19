require 'terminal-table'
require_relative 'board'
require_relative 'user'
class Game
  attr_accessor :a, :b, :c, :board, :user
  def initialize
    @a = []
    @b = []
    @c = []
    @board = Board.new
    @user = User.new
  end
  def start
    for i in 1..3
      a[i] = ' '
      b[i] = ' '
      c[i] = ' '
    end

    while true
      user.validr = ''
      puts board.render(a, b, c)

      puts 'where you want the X at?'

      user.get_position
      user.mark_x(a, b, c)
      if user.validr != true
        puts "\nInvalid input, try again!\n\n"
      end
    end
  end
end
