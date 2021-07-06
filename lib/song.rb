class Song

attr_accessor :name, :artist, :genre

    @@count = 0

    @@genres = []

    @@artists = []

    @@songs = []


    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1;
        @@genres << genre;
        @@artists << artist;
        @@songs << name
 
    end

def self.count
    @@count
end

def self.genres
    genre_list = @@genres.uniq
    return genre_list
end

def self.artists
    artist_list = @@artists.uniq
    return artist_list
end

def self.genre_count
    
    new_hash = Hash.new(0)

    @@genres.each{ |song| new_hash[song] += 1 }

    return new_hash
    
end

def self.artist_count

    new_hash = Hash.new(0)

    @@artists.each { |name| new_hash[name] += 1 }

    return new_hash
end


end