require 'terminal-table'
require 'pry'
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

    turn_counter = 0

    while true
      puts "\n\n"
      puts board.render(a, b, c)

      while user.validr != true
        user.validr = ''
        puts "#{user.player_1}, where you want the X at?"
        user.get_position
        user.mark_x(a, b, c)
        if user.validr == true
          turn_counter += 1
          break
        elsif user.validr == "taken"
        else
          puts "\nInvalid input, try again!\n\n"
        end
        puts board.render(a, b, c)
      end
      puts board.render(a, b, c)

      if turn_counter == 9
        puts "Board is filled!"
        exit
      end

      while opponent.validr != true
        opponent.validr = ''
        puts "\n#{opponent.player_2}, where you want the O at?"
        opponent.get_position
        opponent.mark_o(a, b, c)
        if opponent.validr == true
          turn_counter += 1
          break
        elsif opponent.validr == "taken"
        else
          puts "\nInvalid input, try again!\n\n"
        end
        puts board.render(a, b, c)
      end

      user.validr = ''
      opponent.validr = ''

    end
  end
end
