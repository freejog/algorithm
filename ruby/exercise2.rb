def cal_animal_count(adult, child)
  (adult + child) * 2
end

adult = 0
child = 0

adult += 1
puts "-------#{0}ヶ月目-------"
puts "ネズミは合計#{cal_animal_count(adult, child)}匹です"

1.upto(8) do |i|
  puts "-------#{i * 3}ヶ月目-------"
  before_adult, before_child = adult, child
  adult = adult + child
  child = before_adult
  
  puts "前回存在した幼獣#{before_child}組が成獣になり、成獣は合計で#{adult}組になりました"
  puts "前回存在した成獣#{before_adult}組が幼獣を産み、幼獣は合計で#{child}組になりました"
  puts "ネズミは合計#{cal_animal_count(adult, child)}匹です"
end

cal_animal_count(adult, child)