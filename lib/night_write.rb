require './lib/file_writer'

class NightWrite
  attr_reader :writer

  def initialize
    @writer = FileWriter.new
  end

  def display_confirmation_message
    @writer.echo_plaintext_three_times
    @writer.write_encoded_message
    return "Created '#{@writer.encoded_filename}' containing #{@writer.byte_count} characters."
  end

end

night_write = NightWrite.new

puts night_write.display_confirmation_message
