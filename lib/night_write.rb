require './lib/file_writer'

class NightWrite
  attr_reader :writer

  def initialize
    @writer = FileWriter.new
  end

  def display_encoded_confirmation_message
    @writer.write_encoded_message
    return "Created '#{@writer.encoded_filename}' containing #{@writer.byte_count} characters."
  end

  def display_decoded_confirmation_message
    @writer.write_decoded_message
    return "Created '#{@writer.decoded_filename}' containing #{@writer.byte_count} characters."
  end
end

night_write = NightWrite.new

puts night_write.display_encoded_message
