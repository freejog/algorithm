# #昇順ソート
# def select_sort(ary)
#   length = ary.length
#   (0...length).each do |i|
#     min = ary[i]
#     min_position = i
#     ((i+1)...length).each do |j|
#       if ary[j] < min
#         min = ary[j]
#         min_position = j
#       end
#     end
#     tmp = ary[i]
#     ary[i] = min
#     ary[min_position] = tmp
#   end
#   return ary
# end

#降順ソート
def select_sort(ary)
  length = ary.length
  (0...length).each do |i|
    max = ary[i]
    max_position = i
    ((i+1)...length).each do |j|
      if ary[j] > max
        max = ary[j]
        max_position = j
      end
    end
    tmp = ary[i]
    ary[i] = max
    ary[max_position] = tmp
  end
  return ary
end

ary = [245, 45, 32, 367, 67, 14, 89]
p ary
p select_sort(ary)