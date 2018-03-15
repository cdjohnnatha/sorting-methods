# frozen_string_literal: true

module Sorting
  module Method
    class InsertionSort
      
      def sort(arr)
        sorted_array = arr.clone
        count = 1

        while count < sorted_array.length
          header = arr[count]
          inverted_count = count - 1

          while (sorted_array[inverted_count] > header) && (inverted_count >= 0)
            sorted_array[inverted_count + 1] = sorted_array[inverted_count]
            inverted_count -= 1
          end

          sorted_array[inverted_count + 1] = header
          count += 1
        end

        return sorted_array
      end
    end
  end
end
