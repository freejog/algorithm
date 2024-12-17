def linear_search(array, target)
  array.each.with_index(1) do |num, index|
    if num == target
      puts "探している値は#{index}番目にあります"
      return
    end
  end
  puts "#{target}は見つかりませんでした"
end

array = [14, 32, 45, 67, 89, 122, 245, 367]
puts "探索したい値を以下から選んで、入力してください"
puts array.join(", ")
target = gets.to_i
linear_search(array, target)