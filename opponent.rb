require_relative 'game'
class Opponent
  attr_accessor :validr, :player_2, :answer
  def initialize
    @validr = ''
  end

  def get_name
    puts "Player 2, what is your name?"
    @player_2 = gets.chomp
  end

  def get_position
    @answer = gets.chomp.downcase
  end

  def mark_o(a, b, c)
    for i in 1..3
      if answer == "a#{i}"
        @validr = true
        if a[i] != " "
          puts "\nPosition taken, try again!\n\n"
          break
        end
        a[i] = 'o'
        break
      elsif answer == "b#{i}"
        @validr = true
        if b[i] != " "
          puts "\nPosition taken, try again!\n\n"
          break
        end
        b[i] = 'o'
        break
      elsif answer == "c#{i}"
        @validr = true
        if c[i] != " "
          puts "\nPosition taken, try again!\n\n"
          break
        end
        c[i] = 'o'
        break
      end
    end
  end

end
