class Artist

    attr_accessor :name, :songs

    @@all = []


    def initialize(name)
        @name = name
        @@all << self
        @songs = []
    end

    def save
        @@all << self
    end

    def self.all
        @@all 
    end

    def songs
        Song.all.select do |song|
            song.artist == self
        end
    end

    def add_song(song)
        @songs << song
        song.artist = self 
     end

     def self.find_or_create_by_name(name)
            if @@all.find {|artist| artist.name == name}
                @@all.find {|artist| artist.name == name}
                
            else
                new_artist = self.new(name)
            
            end
        end
     

        def print_songs
            @songs.each {|song| puts song.name}
        end
end
