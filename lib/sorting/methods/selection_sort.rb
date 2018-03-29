# frozen_string_literal: true

module Sorting
  module Method
    class SelectionSort
      def sort(arr)
        sorted_array = arr.clone
        smallest_value = 0
        smallest_index = 0
        position = 0

        while position != sorted_array.length
          smallest_value = sorted_array[position]
          aux_index = position + 1
          smallest_index = position

          while aux_index != sorted_array.length
            if sorted_array[aux_index] < smallest_value
              smallest_value = sorted_array[aux_index]
              smallest_index = aux_index
            end
            aux_index += 1
          end

          sorted_array[smallest_index] = sorted_array[position]
          sorted_array[position] = smallest_value
          position += 1
        end

        return sorted_array
      end
    end
  end
end
