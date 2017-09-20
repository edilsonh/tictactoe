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

    while true
      puts "Will this be a 1 or 2 player game?(type 1 or 2)"
      players = gets.chomp
      if (players == "1" ||  players == "2")
        break
      end
      puts "\nInvalid input, try again!\n\n"
    end
    user.get_name

    if players == "2"
      opponent.get_name
    else
      opponent.name = "Computer"
    end

    turn_counter = 0

    while true
      puts "\n"
      puts board.render(a, b, c)
      board.winner(a, b, c, opponent)

      while user.validr != true
        user.validr = ''
        puts "\n#{user.name}, where you want the X at?"
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
      user.validr = ''
      puts "\n"
      puts board.render(a, b, c)

      if turn_counter == 9
        puts "Board is filled!"
        exit
      end

      board.winner(a, b, c, user)
      if players == "2"
        while opponent.validr != true
          opponent.validr = ''
          puts "\n#{opponent.name}, where you want the O at?"
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
        opponent.validr = ''
      else
        jayjay = ''
        for i in 0..2
          for j in 1..3
            if [a, b, c][i][j] == ' '
              [a, b, c][i][j] = 'o'
              jayjay = true
              break
            end
          end
          if jayjay == true
            break
          end
        end
        print "\nComputer chooses"
        sleep 0.4
        print "."
        sleep 0.4
        print "."
        sleep 0.4
        print "."
        sleep 0.4
        puts ''
      end

    end
  end
end
