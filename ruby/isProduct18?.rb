nums = (10..99)

ans = []
nums.each do |num|
  tenth_digit = num / 10
  one_digit   = num % 10
  product     = tenth_digit * one_digit
  ans << num if product == 18
end
p ans