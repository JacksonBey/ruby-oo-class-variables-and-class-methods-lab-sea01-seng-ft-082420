require 'pry'
class Song

attr_accessor :name, :artist, :genre

@@count=0
@@artists = []
@@genres = []

def initialize(name,artist,genre)
    @name=name
    @artist=artist
    @genre=genre
    @@genres << genre
    @@artists << artist
    @@count += 1
end

def self.count
    @@count
end

def self.artists
    @@artists.uniq
end

def self.genres
    @@genres.uniq
end

def self.genre_count
    genrec= {}
    @@genres.each do |key|
        if genrec[key] == nil
            genrec[key] = 1
        else 
            genrec[key] += 1
        end
    end
    genrec
end

def self.artist_count
    songc= {}
    @@artists.each do |key|
        if songc[key] == nil
            songc[key] = 1
        else 
            songc[key] += 1
        end
    end
    songc
end

end





# Song
# #new
#   takes in three arguments: a name, artist and genre (FAILED - 1)
# #name
#   has a name (FAILED - 2)
# #artist
#   has an artist (FAILED - 3)
# #genre
#   has a genre (FAILED - 4)
# class variables
#   has a class variable, @@count (FAILED - 5)
#   has a class variable, @@artists, that contains all of the artists of existing songs (FAILED - 6)
#   has a class variable, @@genres, that contains all of the genres of existing songs (FAILED - 7)
# .count
#   is a class method that returns that number of songs created (FAILED - 8)
# .artists
#   is a class method that returns a unique array of artists of existing songs (FAILED - 9)
# .genres
#   is a class method that returns a unique array of genres of existing songs (FAILED - 10)
# .genre_count
#   is a class method that returns a hash of genres and the number of songs that have those genres
# .artist_count
#   is a class method that returns a hash of artists and the number of songs that have those artists