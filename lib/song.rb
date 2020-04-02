class Song

    attr_reader :name, :artist

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def artist=(artist)
        @artist = artist
        artist.add_song(self) if !artist.songs.include?(self)
    end

    def self.all
        @@all
    end

    def artist_name
        @artist == nil ? nil : @artist.name
    end
    
end