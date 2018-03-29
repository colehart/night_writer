require './lib/file_writer'

class NightWrite
  attr_reader :file_writer

  def initialize
    @file_writer = FileWriter.new
  end

  def display_encoded_confirmation_message
    if @file_writer.write_encoded_message
      return "Created '#{@file_writer.encoded_filename}' containing #{@file_writer.byte_count} characters."
    else
      return "Could not encode message."
    end
  end

  def display_decoded_confirmation_message
    if @file_writer.write_decoded_message
      return "Created '#{@file_writer.decoded_filename}' containing #{@file_writer.byte_count} characters."
    else
      return "Could not decode message."
    end
  end
end

night_write = NightWrite.new

  puts night_write.display_encoded_confirmation_message

  puts night_write.display_decoded_confirmation_message
