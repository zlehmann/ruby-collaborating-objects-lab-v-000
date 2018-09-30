class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def path
    @path
  end

  def files()
    files = []
    Dir.glob("**/*.mp3") do |filename|
      files << filename
    end
  end

  def import
    files = []
    Dir.glob("**/*.mp3") do |filename|
      files << filename
    end
  end

end
