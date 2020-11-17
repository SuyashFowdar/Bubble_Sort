def bubble_sort(arr)
  done = false
  while done == false
    done = true
    arr.each_with_index do |_item, index|
      next unless !arr[index + 1].nil? && (arr[index + 1] < arr[index])

      a = arr[index]
      b = arr[index + 1]
      arr[index + 1] = a
      arr[index] = b
      done = false
    end
  end
  arr
end

def bubble_sort_by(arr)
  done = false
  while done == false
    done = true
    arr.each_with_index do |_item, index|
      next if arr[index + 1].nil?

      a = arr[index]
      b = arr[index + 1]
      next unless yield(a, b).positive?

      arr[index + 1] = a
      arr[index] = b
      done = false
    end
  end
  arr
end

puts(bubble_sort_by(%w[hi hello hey]) do |left, right|
  left.length - right.length
end)

puts(bubble_sort([2, 4, 1, 6, 3, 7]))
