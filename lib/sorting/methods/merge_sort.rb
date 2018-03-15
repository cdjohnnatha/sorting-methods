# frozen_string_literal: true

module Sorting
  module Method
    class MergeSort

      def sort(arr)
        if arr.length <= 1
          return arr
        end
        # split array
        
        middle = (arr.length/2).round
        first_half = sort arr.slice(0, middle)
        last_half = sort arr.slice(middle, arr.length)

        return merge(first_half, last_half)
      end

      def merge(first_half, last_half)
        
        arr = Array.new

        offset_a = 0
        offset_b = 0
        while offset_a < first_half.length && offset_b < last_half.length
          a = first_half[offset_a]
          b = last_half[offset_b]
          if a <= b
            arr.push(a)
            offset_a += 1 
          else
            arr.push(b)
            offset_b += 1
          end
        end 

        # Check if have a last element in both sides
        while offset_a < first_half.length
          arr << first_half[offset_a]
          offset_a += 1
        end

        while offset_b < last_half.length
          arr << last_half[offset_b]
          offset_b += 1
        end

        return arr
      end
    end
  end
end