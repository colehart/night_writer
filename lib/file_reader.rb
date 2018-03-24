class FileReader
  def read
    filename = ARGV[0]
    File.read(filename)

    testing 123
  end
end
