class MP3Importer
  attr_accessor :path

  def initialization(path)
    @path = path
  end

  def files

  end

  def import
    files = Dir[@path*.mp3]
  end

end
