require 'pry'

class Artist

    attr_accessor :name
    @@all = []

    def initialize(name=nil)
        @name = name
        @@all << self
    end

    def new_song(name, genre)
        Song.new(name, self, genre)
    end

    def songs
        Song.all.select {|song| self == song.artist}
    end

    def genres
        songs = self.songs
        songs.map{|song| song.genre}
    end

    def self.all
        @@all
    end

end

# Artist
#   #name
#     has a name (FAILED - 1)
#   .all
#     knows about all artist instances (FAILED - 2)
#   #songs
#     returns all songs associated with this Artist (FAILED - 3)
#   #new_song
#     given a name and genre, creates a new song associated with that artist (FAILED - 4)
#   #genres
#     has many genres, through songs (FAILED - 5)