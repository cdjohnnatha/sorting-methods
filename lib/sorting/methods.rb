# frozen_string_literal: true

require "sorting/methods/file_manipulation"
require "sorting/methods/insertion_sort"
require "sorting/methods/selection_sort"
require "sorting/methods/merge_sort"
require "sorting/methods/quick_sort"
require "sorting/methods/heap"

module Sorting
  fileread = Method::FileManipulation.new
  messy_array = fileread.create_array_by_file
  
  insertion_sort = Method::InsertionSort.new
  selection_sort = Method::SelectionSort.new
  merge_sort = Method::MergeSort.new
  quick_sort = Method::QuickSort.new
  heap = Method::Heap.new
  heap_sort = Method::Heap.new

  insertion_sort = insertion_sort.sort(messy_array)
  selection_sort = selection_sort.sort(messy_array)
  merge_sort = merge_sort.sort(messy_array)
  quick_sort = quick_sort.sort(messy_array)
  heap = heap.heapify(messy_array)
  heap_sort = heap_sort.sort(messy_array)

  print "Messy Array:\n #{messy_array}\n"
  print "\n\nInsertion Sort Algorithm\n #{insertion_sort}"
  print "\n\nSelection Sort Algorithm\n #{selection_sort}"
  print "\n\nMerge Sort Algorithm\n #{merge_sort}\n"
  print "\n\nQuick Sort Algorithm\n #{quick_sort}\n"
  print "\n\nHeap Algorithm\n #{heap}\n"
  print "\n\nHeap Sort Algorithm\n #{heap_sort}\n"

end
