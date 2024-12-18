def quick_sort(ary)
  return ary if ary.length < 2
  pivot = ary.shift
  smaller = []
  bigger  = []

  ary.each do |num|
    if num < pivot
      smaller << num
    else
      bigger  << num
    end
  end
  return quick_sort(smaller) + [pivot] + quick_sort(bigger)
end

def binary_include?(ary, target)
  head = 0
  tail = ary.length - 1
  while head <= tail do
    center = (head + tail) / 2
    if target == ary[center]
      return true
    elsif target < ary[center]
      tail = center - 1
    else
      head = center + 1
    end
  end
  return false
end

query_path = 'query.txt'
database_path = 'database.txt'
database = []
# データベース内容
File.open(database_path, mode = "r") do |f|
  f.each_line do |record|
    database << record.to_i
  end
end


database = quick_sort(database)
# 検索クエリの処理
File.open(query_path, mode = "r") do |f|
  f.each_line do |query|
    query = query.to_i
    if binary_include?(database, query)
      puts "#{query}を見つけました"
    else
      puts "#{query}は見つかりませんでした"
    end
  end
end