# frozen_string_literal: true

require "max_heap"

module Sorting
  module Method
    class HeapSort
      attr_accessor :result, :messy_tree

      def sort(arg)
        @messy_tree = arg
        @result = Array.new
        max_heapify = Method::MaxHeap.new
        @messy_tree = max_heapify.max_heap(@messy_tree)

      end
    end
  end
end
