# frozen_string_literal: true

module Sorting
  module Method
    class HeapSort
      attr_accessor :input

      def sort(arg)
        @input = arg
      end

      def heap_sort
        heapify
        the_end = input.length - 1
        while the_end > 0
          input[the_end], input[0] = input[0], input[the_end]
          the_end -= 1
          shift_down(0, the_end)
        end
        input
      end

      def heapify
        the_start = (input.length - 2) / 2

        while the_start >= 0
          shift_down(the_start, input.length - 1)
          the_start -= 1
        end
      end

      def shift_down(the_start, the_end)
        root = the_start
        while root * 2 + 1 <= the_end
          child = root * 2 + 1
          swap = root

          if input[swap] < input[child]
            swap = child
          end

          if child + 1 <= the_end && input[swap] < input[child + 1]
            swap = child + 1
          end

          if swap != root
            input[root], input[swap] = input[swap], input[root]
            root = swap
          else
            return
          end

        end
      end
    end
  end
end
