require "pry"

class Song

    attr_accessor :name, :artist
    @@all = []
    def initialize(name)
        @name = name 
        @artist = artist
        @@all << self
    end 
    def self.all
        @@all
    end
    def artist_name=(name)
        self.artist = Artist.find_or_create_by_name(name)
    
    end 
    def self.new_by_filename(file)
        artist,song,genre = file.gsub(".mp3", "").split(" - ")
        new_song = self.new(song)
        new_song.artist_name = artist 
        new_song
        #OR
        # artist = file.split(" - ")[0]
        # name = file.split(" - ")[1]
        #song = Song.new(name)
        #song.artist_name = artist
        #song
    end 
end 