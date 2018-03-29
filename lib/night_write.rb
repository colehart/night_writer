require './lib/file_writer'

class NightWrite
  attr_reader :file_writer

  def initialize
    @file_writer = FileWriter.new
  end

  def display_encoded_confirmation_message
    @file_writer.write_encoded_message
    return "Created '#{@file_writer.encoded_filename}' containing #{@file_writer.byte_count} characters."
  end

  def display_decoded_confirmation_message
    @file_writer.write_decoded_message
    return "Created '#{@file_writer.decoded_filename}' containing #{@file_writer.byte_count} characters."
  end
end

night_write = NightWrite.new

if @writer.write_encoded_message
  puts night_write.display_encoded_confirmation_message
else
  puts night_write.display_decoded_confirmation_message
end
