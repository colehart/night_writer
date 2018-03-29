require './lib/file_writer'

class NightWrite
    attr_reader :file_writer

    def initialize
      @file_writer = FileWriter.new
    end

end
