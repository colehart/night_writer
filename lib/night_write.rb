require "./lib/file_reader"
require "./lib/message"

class NightWrite
#add any necessary attr
attr_reader :reader

  def initialize
  #attributes/instance_variables here
  @reader = FileReader.new
  end

File.open("message.txt").each do |line|
puts line
end
end
