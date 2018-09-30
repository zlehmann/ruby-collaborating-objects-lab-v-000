class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(name)
    @songs << name
  end


  def songs
    @songs
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    output = nil
    @@all.each do |artist|
      if artist.name == name
        output = artist
      else
        output = Artist.new(name)
      end
    end
    return output
  end

  def print_songs
    @songs.each do |song|
      puts song.title
    end
  end

end
