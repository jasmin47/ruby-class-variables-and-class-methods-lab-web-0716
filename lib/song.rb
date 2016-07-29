class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @@count += 1
    @name = name
    @artist = artist
    @@artists << @artist
    @genre = genre
    @@genres << @genre
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    genre_hash = Hash.new
    @@genres.each {|name|
      genre_hash[name] ||= genre_hash[name] = 0
      genre_hash[name] += 1}
      genre_hash
  end

  def self.artist_count
    artist_hash = Hash.new
    @@artists.each {|name|
      artist_hash[name] ||= artist_hash[name] = 0
      artist_hash[name] += 1}
      artist_hash

  end


end