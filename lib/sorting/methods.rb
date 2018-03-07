# frozen_string_literal: true

require "sorting/methods/file_manipulation"
require "sorting/methods/sorting"

module Sorting
  fileread = Method::FileManipulation.new
  sorting = Method::Sorting.new
  messy_array = fileread.create_array_by_file

  print "Messy Array:\n #{messy_array}\n"
  sorting.insertion_sort(messy_array)
  sorting.selection_sort(messy_array)

end
