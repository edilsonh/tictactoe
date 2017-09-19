require 'terminal-table'
a = []
b = []
c = []

for i in 1..3
  a[i] = ' '
  b[i] = ' '
  c[i] = ' '
end

while true
  table = Terminal::Table.new do |t|
    t << [a[1], a[2] ,a[3]]
    t << :separator
    t.add_row [b[1], b[2], b[3]]
    t.add_separator
    t.add_row [c[1], c[2], c[3]]
  end
  puts table

  puts 'where you want the X at'

  while true
    answer = gets

    if answer.chomp == 'a1'
      break
    elsif answer.chomp == 'b1'
      break
    elsif
      puts "invalid response, try again"
    end
  end

  for i in 1..3
    if answer.chomp == "a#{i}"
      a[i] = 'x'
    elsif answer.chomp == "b#{i}"
      b[i] = 'x'
    elsif answer.chomp == "c#{i}"
      c[i] = 'x'
    end
  end
end
