# frozen_string_literal: true

require "sorting/methods/file_manipulation"
require "sorting/methods/sorting"

module Sorting
  fileread = Method::FileManipulation.new
  messy_array = fileread.create_array_by_file
  
  sorting = Method::Sorting.new

  print "Messy Array:\n #{messy_array}\n"
  sorting.insertion_sort(messy_array)
  sorting.selection_sort(messy_array)

end
