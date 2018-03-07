# frozen_string_literal: true

module Sorting
  module Method
    class FileManipulation
      def create_array_by_file
        puts "File path to read and create an array by."
        # fileName = "data/inputs/couting.txt"
        fileName = gets.chomp

        if fileName.nil?
          fileName = "data/inputs/couting.txt"
        end
        file_inputs = Array.new
        File.open(fileName) do |file|
          while line = file.gets
            if line.match?(/\A[-+]?(\d)+(\s|$)/)
              file_inputs.push(line.to_i)
            else
              raise "Wrong file inputs, check if have empty spaces after number or leter between them"
            end
          end
        end

        return file_inputs

      rescue Exception => msg
        puts msg
      end
    end
  end
end
