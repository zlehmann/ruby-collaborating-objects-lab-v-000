class Song
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    name = filename.split(" - ")[1]
    artist = filename.split(" - ")[0]
    song = Song.new(name)
    song.artist(name)
    return song
  end

  def name
    @name
  end

  def artist=(name)
    artist_obj = Artist.find_or_create_by_name(name)
  end

  def artist(artist_name)
    Artist.find_or_create_by_name(artist_name)
  end

  def artist_name=(name)
    artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end

end
