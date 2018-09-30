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
      files << filename.split("/")[-1]
    end
    return files
  end

  def import
    files = []
    Dir.glob("**/*.mp3") do |filename|
      files << filename
    end
  end

end
