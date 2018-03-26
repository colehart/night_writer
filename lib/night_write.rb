require "./lib/file_reader"

class NightWrite
#add any necessary attr
attr_reader :reader

  def initialize
  #attributes/instance_variables here
  @reader = FileReader.new
  end

  def write
    filename = ARGV[1]
    count = File.write(filename, reader.read)
    return "Created '#{filename}' containing #{count} characters."
  end
end
