require_relative 'game'
class User
  attr_accessor :validr, :answer
  def initialize
    @validr = ''
  end

  def get_position
    @answer = gets.chomp.downcase
  end

  def mark_x(a, b, c)
    for i in 1..3
      if answer == "a#{i}"
        a[i] = 'x'
        @validr = true
        break
      elsif answer == "b#{i}"
        b[i] = 'x'
        @validr = true
        break
      elsif answer == "c#{i}"
        c[i] = 'x'
        @validr = true
        break
      end
    end
  end

end
