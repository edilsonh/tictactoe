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
end
