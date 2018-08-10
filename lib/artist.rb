class Artist

  @@all = []

  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    @@all << song
    song.artist = self
  end

  def add_song_by_name(song)
    new_song = Song.new(song)
    @songs << new_song
    @@all << new_song
    new_song.artist = self
  end

  def self.song_count
    @@all.count
  end

end
