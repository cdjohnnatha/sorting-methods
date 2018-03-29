# frozen_string_literal: true

module Sorting
  module Method
    class RadixSort
      attr_accessor :arr

      def sort(arr)
        @arr = arr
      end
    end
  end
end