require "sorting/methods/file_manipulation"
require "sorting/methods/insertion_sort"

module Sorting
  fileread = Method::FileManipulation.new
  insertion_sort = Method::InsertionSort.new
  messy_array = fileread.create_array_by_file

  insertion_ordered = insertion_sort.sort(messy_array)
  print "Messy Array:\n #{messy_array}\n"
  print "\nInsertion Sort: \n\n#{insertion_ordered}"
  
end
