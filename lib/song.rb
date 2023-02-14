class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []
    @@all_songs = []
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        
        @@count += 1
        @@artists << artist
        @@genres << genre
        @@all_songs << self
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
        @@genres.tally
    end
    def self.artist_count
        @@artists.tally
    end
end