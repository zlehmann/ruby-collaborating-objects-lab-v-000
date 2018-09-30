class MP3Importer
  attr_accessor :path

  def initialization(path)
    @path = path
  end

  def files

  end

  def import
    files = []
    Dir.glob("**/*.mp3") do |filename|
      files << filename
    end
  end

end
