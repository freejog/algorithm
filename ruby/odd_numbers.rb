n = gets.to_i
sum = 0
n.times do |i|
  sum += 2 * (i + 1) - 1
end

puts "sum = #{sum}"
(sum % 2 == 1) ? (puts 'odd') : (puts 'even')
