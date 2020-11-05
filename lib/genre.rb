class Genre

    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def songs
        Song.all.select{|song| song.genre == self}
    end

    def artists
        songs = self.songs
        songs.map{|song| song.artist}
    end

    def self.all
        @@all
    end

end

# Genre
#   #name
#     has a name (FAILED - 10)
#   #songs
#     has many songs (FAILED - 11)
#   .all
#     knows about all genre instances (FAILED - 12)
#   #artists
#     has many artists, through songs (FAILED - 13)