class Song
    @@count = 0
    @@genres = []
    @@artists = []
    @@all = []

    attr_accessor :name, :artist, :genre
    def initialize(name, artist, genre)
        @artist = artist
        @genre = genre
        @name = name
        @@count += 1
        @@all << self
        @@genres << genre
        @@artists << artist
    end
    def self.count
        @@count
    end
    def self.genres
        @@genres.uniq
    end
    def self.artists
        @@artists.uniq
    end
    def self.genre_count
        genres_count = {}
        @@genres.each do |genre|
            genres_count[genre] = @@genres.count(genre)
        end
        genres_count
    end
    def self.artist_count
        artists_count = {}
        @@artists.each do |artist|
            artists_count[artist] = @@artists.count(artist)
        end
        artists_count
    end
    def self.print_all 
        @@all.each{|song| p song.name}

    end
        
end
