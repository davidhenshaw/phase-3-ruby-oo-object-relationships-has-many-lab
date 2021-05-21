class Song
    attr_accessor :artist
    attr_accessor :name
    @@all = []

    def initialize(song_name)
        @name = song_name
        @@all << self
    end

    def self.all
        @@all
    end

    def artist_name
        if @artist
            @artist.name
        else
            @artist
        end
    end
end