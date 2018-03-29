# frozen_string_literal: true

module Sorting
  module Method
    class CoutingSort
      attr_accessor :arr

      def sort(arr, biggest=nil)
        @arr = arr.clone
        biggest = @arr.max if biggest == nil

        sorted = Array.new(arr.length - 1, 0)
        aux_arr = Array.new(biggest + 1, 0)

        @arr.each { |element| aux_arr[element] += 1 }

        (1..aux_arr.length - 1).each do |position|
          aux_arr[position] += aux_arr[position-1]
        end

        @arr.each do |element|
          aux_arr[element] -= 1
          sorted[aux_arr[element]] = element
        end

        return sorted
      end
    end
  end
end