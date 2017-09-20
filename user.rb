require_relative 'game'
class User
  attr_accessor :validr, :answer, :name
  def initialize
    @validr = ''
  end

  def get_name
    puts "Player 1, what is your name?"
    @name = gets.chomp
  end

  def get_position
    @answer = gets.chomp.downcase
  end

  def mark_x(a, b, c)
    for i in 1..3
      if answer == "a#{i}"
        if a[i] != " "
          @validr = "taken"
          puts "\nPosition taken, try again!\n\n"
          break
        end
        @validr = true
        a[i] = 'x'
        break
      elsif answer == "b#{i}"
        if b[i] != " "
          @validr = "taken"
          puts "\nPosition taken, try again!\n\n"
          break
        end
        @validr = true
        b[i] = 'x'
        break
      elsif answer == "c#{i}"
        if c[i] != " "
          @validr = "taken"
          puts "\nPosition taken, try again!\n\n"
          break
        end
        @validr = true
        c[i] = 'x'
        break
      end
    end
  end

end
