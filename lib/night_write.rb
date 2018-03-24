require "./lib/file_reader"

class NightWrite
#add any necessary attr
attr_reader :reader

  def initialize
  #attributes/instance_variables here
  @reader = FileReader.new
  end

end
