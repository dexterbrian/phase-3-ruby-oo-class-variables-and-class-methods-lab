class Song
    @@count = 0
    @@genres = []
    @@artists = []

    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre

        @@count += 1
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
        @@genres.tally
    end

    def self.artist_count
        @@artists.tally
    end
end

# ninety_nine_problems = Song.new("99 Problems", "Jay-Z", "rap")

# puts ninety_nine_problems.name
# # => "99 Problems"

# puts ninety_nine_problems.artist
# # => "Jay-Z"

# puts ninety_nine_problems.genre
# # => "rap"