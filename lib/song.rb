class Song
  
    attr_reader :name, :artist, :genre
        # @@count = 0
    #     @@genre_count = 0
        @@genres = []
        @@artists = []
        @@count = 0
        
    def initialize name, artist, genre
        @name = name
        @artist = artist
        @genre = genre
        
        @@artists << artist
        @@genres << genre
        @@count += 1
    end

    def self.artists
        @@artists.uniq 
    end

    # def self.genres
    #     @@genres.uniq
    # end

    def self.count
        @@count 
    end

    def self.genre_count
    genre_count = {}
    @@genres.uniq
    @@genres.each do |genre| 
        if genre_count[genre]
            genre_count[genre] += 1
        else
        genre_count[genre]= 1
        end
    end
    genre_count
    end

     def self.artist_count
    artist_count = {}
    @@artists.each do |artist| 
        if artist_count[artist]
            artist_count[artist] += 1
        else
        artist_count[artist]= 1
        end
    end
    artist_count
    end

    # hotline_bling = Song.new("Hotline Bling")
    # thriller = Song.new("Thriller")


end