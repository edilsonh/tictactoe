require_relative 'game'
class User
  attr_accessor :validr, :answer, :player_1
  def initialize
    @validr = ''
  end

  def get_name
    puts "Player 1, what is your name?"
    @player_1 = gets.chomp
  end

  def get_position
    @answer = gets.chomp.downcase
  end

  def mark_x(a, b, c)
    for i in 1..3
      if answer == "a#{i}"
        @validr = true
        if a[i] != " "
          puts "\nPosition taken, try again!\n\n"
          break
        end
        a[i] = 'x'
        break
      elsif answer == "b#{i}"
        @validr = true
        if b[i] != " "
          puts "\nPosition taken, try again!\n\n"
          break
        end
        b[i] = 'x'
        break
      elsif answer == "c#{i}"
        @validr = true
        if c[i] != " "
          puts "\nPosition taken, try again!\n\n"
          break
        end
        c[i] = 'x'
        break
      end
    end
  end

end
