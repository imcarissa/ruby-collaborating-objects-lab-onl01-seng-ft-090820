class Song
  
  attr_accessor :name, :artist
  
<<<<<<< HEAD
  @@all = []
  
  def initialize(name)
    @name = name
=======
  def initialize(name)
    @name = name
    @songs = []
>>>>>>> 2bb232365360f94dc68d9a1f9333e09af4abb9cc
    @@all << self
  end
  
  def self.all 
<<<<<<< HEAD
    @@all 
  end
  
  def self.new_by_filename(file_name)
    song = file_name.split(" - ")[1]
    artist = file_name.split(" - ")[0]
    new_song = self.new(song)
    new_song.artist_name = artist
    new_song
  end
  
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
=======
    @all
  end
  
  def self.new_by_filename(filename)
    split_name = filename.split(" - ")
    song = self.new(split_name[1])
    artist = Artist.find_or_create_by_name(split_name[0])
    song.artist = artist
>>>>>>> 2bb232365360f94dc68d9a1f9333e09af4abb9cc
  end
  
end