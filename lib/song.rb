class Song
    attr_accessor :artist, :name, :genre

    @@all = []

    def initialize(name)
        @name = name
        save
    end
    # adds to @@all array 
    def save 
        @@all << self
    end

    def self.all    
        @@all
    end
    # ternary to check if the artist name is valid
    def artist_name
        self.artist ? self.artist.name: nil
    end
end
