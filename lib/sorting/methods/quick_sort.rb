# frozen_string_literal: true

module Sorting
  module Method
    class QuickSort
      def sort(arr, from = 0, to = nil)
        to = arr.length - 1 if to == nil
        return arr if from >= to

        pivot = from
        (pivot + 1..to).each do |idx|
          if arr[idx] < arr[pivot]
            temp = arr[idx]
            arr[pivot + 1] = arr[pivot]
            arr[pivot] = temp
            pivot += 1
          end
        end

        sort(arr, from, pivot - 1)
        sort(arr, pivot + 1, to)

        return arr
      end
    end
  end
end
