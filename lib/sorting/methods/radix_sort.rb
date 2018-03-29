# frozen_string_literal: true

require "sorting/methods/couting_sort"

module Sorting
  module Method
    class RadixSort
      attr_accessor :arr

      def sort(arr)
        couting_sort = Method::CoutingSort.new
        @arr = arr
        biggest = @arr.max
        exp = 0
        until biggest == 0 do
          exp += 1
          biggest /= 10
        end
          for position in 0..exp do
            position = 10 * exp
            @arr = couting_sort.sort(@arr, position)
          end

        return @arr
      end
    end
  end
end