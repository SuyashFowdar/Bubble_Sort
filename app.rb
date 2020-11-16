# frozen_string_literal: true

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
  puts(arr)
end

array = [2, 4, 1, 6, 3, 7]

bubble_sort(array)
