# frozen_string_literal: true

module Sorting
  module Method
    class RadixSort
      attr_accessor :arr

      def sort(arr)
        # couting_sort = Method::CoutingSort.new
        @arr = arr
        exp = 1
        biggest = @arr.max

        until biggest/exp == 0 do
          @arr = counting_sort(exp) 

          exp *= 10
        end  

        return @arr
      end


      def counting_sort(exp)
        biggest = 0
        
        @arr.each { |element|  biggest = fix_exp(element, exp) if fix_exp(element, exp) > biggest }
        puts biggest
        sorted = Array.new(arr.length - 1, 0)
        aux_arr = Array.new(biggest + 1, 0)

        @arr.each { |element| aux_arr[fix_exp(element, exp)] += 1 }

        (1..aux_arr.length - 1).each do |position|
          aux_arr[position] += aux_arr[position-1]
        end

        @arr.each do |element|
          aux_arr[fix_exp(element, exp)] -= 1
          sorted[aux_arr[fix_exp(element, exp)]] = element
        end

        return sorted
      end

      private
        def fix_exp(element, exp)
          (element/exp)%10
        end
    end
  end
end