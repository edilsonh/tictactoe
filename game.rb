require 'terminal-table'

table = Terminal::Table.new do |t|
  t << ['o','x','o']
  t << :separator
  t.add_row ['x','o','x']
  t.add_separator
  t.add_row ['o','x','o']
end
puts table
