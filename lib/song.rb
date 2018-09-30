class Song
  attr_accessor :title, :artist

  def initialize(title)
    @title = title
  end

  def new_by_filename(filename)
    @title = filename.split(" - ")[1]
    @artist = filename.split(" - ")[0]
    song = Song.new(song_name)
    self.artist = @artist
  end

  def artist
    @artist
  end

  def artist_name=(name)
    artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end

end
