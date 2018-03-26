require './lib/file_writer'
require 'pry'
class NightWrite
  #add any necessary attr
  attr_reader :writer

  def initialize
  #attributes/instance_variables here
  @writer = FileWriter.new
  end

  @writer.write_encoded_message

end
