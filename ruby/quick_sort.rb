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

ary = [245, 45, 32, 367, 122, 67, 14, 89]
p ary
p quick_sort(ary)