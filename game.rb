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

  answer = gets

  for i in 1..3
    if answer.chomp.downcase == "a#{i}"
      a[i] = 'x'
      validr = true
      break
    elsif answer.chomp.downcase == "b#{i}"
      b[i] = 'x'
      validr = true
      break
    elsif answer.chomp.downcase == "c#{i}"
      c[i] = 'x'
      validr = true
      break
    end
  end
  if validr != true
    puts "Invalid input, try again!"
  end
end
