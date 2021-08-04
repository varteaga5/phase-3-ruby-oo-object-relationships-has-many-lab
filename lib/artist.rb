require 'pry'
class Artist
    attr_accessor :name
    @@song_count = 0
    # initializes name and songs, takes in one arg
    def initialize(name)
        @name = name
        @songs = []
    end
    # method for song count 
    def self.song_count 
        #binding.pry
        Song.all.length
        #@@song_count

    end
    #returns the songs arr
    def songs
        Song.all.select {|song| song.artist == self}
    end
    # adds songs, takes one arg, shovels arg to @songs arr
    def add_song(song)
        @@song_count += 1
        @songs << song
        song.artist = self
    end

    def add_song_by_name(song_name) 
        # increases song count
        @@song_count += 1
        # creates new song variable
        song = Song.new(song_name)
        #adds song to the arr
        @songs << song
        #this creates the artist within new variable on line 21
        song.artist = self

    end


end