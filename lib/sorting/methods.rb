# frozen_string_literal: true

require "sorting/methods/file_manipulation"
require "sorting/methods/sorting"
require "sorting/methods/merge_sort"
require "sorting/methods/quick_sort"

module Sorting
  fileread = Method::FileManipulation.new
  messy_array = fileread.create_array_by_file
  
  sorting = Method::Sorting.new
  merge_sort = Method::MergeSort.new
  quick_sort = Method::QuickSort.new

  print "Messy Array:\n #{messy_array}\n"
  sorting.insertion_sort(messy_array)
  sorting.selection_sort(messy_array)
  merge_sort = merge_sort.sort(messy_array)
  print "\n\nMerge Sort Algorithm\n #{merge_sort}"
  
  quick_sort = quick_sort.sort(messy_array)
  print "\n\nQuick Sort Algorithm\n #{quick_sort}"

end
