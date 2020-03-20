def bubble_sort(arr)
  loops = arr.length
  i = 0
  while i < loops - 1
    j = 0
    while j < loops - 1
      arr[j], arr[j + 1] = arr[j + 1], arr[j] if arr[j] > arr[j + 1]
      j += 1
    end
    i += 1
  end
  puts arr
end

bubble_sort([3, 4, 52, 31, 7, 5])

def bubble_sort_by(arr)
  (arr.length - 1).step(1, -1) do |i|
    swapped = false
    (0...i).each do |j|
      swapped = true if yield(arr[j], arr[j + 1]).to_i.positive?
      arr[j], arr[j + 1] = arr[j + 1], arr[j] if yield(arr[j], arr[j + 1]).to_i.positive?
    end
    break unless swapped
  end

  puts arr
end

bubble_sort_by(%w[hi hello hey]) do |left, right|
  left.length - right.length
end
