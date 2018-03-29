# frozen_string_literal: true

module Sorting
  module Method
    class MaxHeap
      attr_accessor :tree, :heap_size

      def max_heap(arr)
        @tree = arr.clone
        @heap_size = arr.length

        (0..@heap_size - 1).to_a.reverse.each do |position|
          max_heapify(position)
        end
        return @tree
      end

      def max_heapify(position)
        largest = 0
        position
        if left_index(position) < @heap_size

          if left_leaf_value(position) > @tree[position]
            swap(position, left_index(position))
          end

          if right_index(position) < @heap_size
            if right_leaf_value(position) > @tree[position]
              swap(position, right_index(position))
            end

            if right_leaf_value(position) > left_leaf_value(position)
              swap(left_index(position), right_index(position))
            end
          end
        end
      end

      private
        def left_index(position)
          (2 * position)
        end

        def right_index(position)
          (2 * position) + 1
        end

        def left_leaf_value(position)
          @tree[left_index(position)]
        end

        def right_leaf_value(position)
          @tree[right_index(position)]
        end

        def swap(position, largest)
          @tree[position], @tree[largest] = @tree[largest], @tree[position]
        end
    end
  end
end
