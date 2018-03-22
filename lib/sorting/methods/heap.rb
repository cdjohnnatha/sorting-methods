# frozen_string_literal: true

module Sorting
  module Method
    class Heap
      attr_accessor :tree, :heap_size

      def heapify(arr)
        @tree = arr.clone
        @heap_size = arr.length

        (0..@heap_size-1).to_a.reverse.each do |position|
          sort_heapify(position)
        end

      end

      def sort_heapify(position)
        return if leaf_node?(position) || satisfied?(position)
        
        larger = left_leaf_key(position) > right_leaf_key(position) ? left_leaf(position) : right_leaf(position)
        @tree[position], @tree[larger] = @tree[larger], @tree[position]
        sort_heapify(larger)
      end

      private
        def root
          return (@tree.length/2).round
        end

        def left_leaf(position)
          2*position + 1
        end

        def right_leaf(position)
          2*position + 2
        end

        def left_leaf_key(position)
          @tree[left_leaf(position)]  
        end

        def right_leaf_key(position)
          @tree[right_leaf(position)]
        end

        def leaf_node?(position)
          return position >= @heap_size/2
        end

        def satisfied?(position)
          @tree[position] >= left_leaf_key(position) and @tree[position] >= right_leaf_key(position)
        end
    end
  end
end
