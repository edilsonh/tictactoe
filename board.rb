class Board
  def render(a, b, c)
    table = Terminal::Table.new do |t|
      t << [a[1], a[2] ,a[3]]
      t << :separator
      t.add_row [b[1], b[2], b[3]]
      t.add_separator
      t.add_row [c[1], c[2], c[3]]
    end
  end

  def winner(a, b, c, player)
    if player.class == User
      mark = 'x'

    elsif player.class == Opponent
      mark = 'o'
    end

    if (a[1] == mark) && (a[2] == mark) && (a[3] == mark)
      puts "\n#{player.name} is the winner!"
      exit
    end

    if (b[1] == mark) && (b[2] == mark) && (b[3] == mark)
      puts "\n#{player.name} is the winner!"
      exit
    end

    if (c[1] == mark) && (c[2] == mark) && (c[3] == mark)
      puts "\n#{player.name} is the winner!"
      exit
    end

    if (a[1] == mark) && (b[2] == mark) && (c[3] == mark)
      puts "\n#{player.name} is the winner!"
      exit
    end

    if (a[3] == mark) && (b[2] == mark) && (c[1] == mark)
      puts "\n#{player.name} is the winner!"
      exit
    end

    if (a[1] == mark) && (b[1] == mark) && (c[1] == mark)
      puts "\n#{player.name} is the winner!"
      exit
    end

    if (a[2] == mark) && (b[2] == mark) && (c[2] == mark)
      puts "\n#{player.name} is the winner!"
      exit
    end

    if (a[3] == mark) && (b[3] == mark) && (c[3] == mark)
      puts "\n#{player.name} is the winner!"
      exit
    end
  end
end
