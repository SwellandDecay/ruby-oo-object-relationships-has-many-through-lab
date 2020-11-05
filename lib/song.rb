class Song

    attr_accessor :name, :artist, :genre
    @@all = []

    def initialize(name=nil, artist=nil, genre=nil)
        @name = name
        @artist = artist
        @genre = genre
        @@all << self
    end

    def genre
        @genre
    end

    def artist
        @artist
    end

    def self.all
        @@all
    end


end

# Song
#   #new
#     initializes with a name, an artist, and a genre (FAILED - 6)
#   .all
#     knows about all song instances (FAILED - 7)
#   #genre
#     belongs to a genre (FAILED - 8)
#   #artist
#     belongs to a artist (FAILED - 9)