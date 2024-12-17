n = gets.to_i
divisors = []

1.upto(n) do |i|
  if n % i == 0
    divisors << i
  end
end
puts divisors.length