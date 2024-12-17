def select_sort(array)
  (0...array.length).each do |i|
    min = array[i]
    min_position = i
    ((i+1)...array.length).each do |j|
      if min > array[j]
        min = array[j]
        min_position = j
      end
    end
    tmp = array[i]
    array[i] = min
    array[min_position] = tmp
  end
  return array
end

array = [245, 45, 32, 367, 67, 14, 89]
p array
p select_sort(array)