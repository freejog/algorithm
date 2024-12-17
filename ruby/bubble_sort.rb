#昇順
def bubble_sort(ary)
  length = ary.length
  (1...length).each do |i|
    (i...length).reverse_each do |j|
      if ary[j - 1] > ary[j]
        tmp = ary[j - 1]
        ary[j - 1] = ary[j]
        ary[j] = tmp
      end
    end
  end
  return ary
end

#降順
# def bubble_sort(ary)
#   length = ary.length
#   (1...length).each do |i|
#     (i...length).reverse_each do |j|
#       if ary[j - 1] < ary[j]
#         tmp = ary[j - 1]
#         ary[j - 1] = ary[j]
#         ary[j] = tmp
#       end
#     end
#   end
#   return ary
# end



ary = [245, 45, 32, 367, 122, 67, 14, 89]
p ary
p bubble_sort(ary)