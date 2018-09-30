class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def path
    @path
  end

  def files()
    import()
  end

  def import
    files = []
    Dir.glob("**/*.mp3") do |filename|
      files << filename
    end
  end

end
