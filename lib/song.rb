class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end


  def self.create
    the_new_song = Song.new
    @@all << the_new_song
    the_new_song
  end
  
  def self.new_by_name(song_name)
    song = Song.new
    song.name = song_name
  end
  
  def self.create_by_name(song_name)
    song = Song.new
    song.name = song_name
    @@all << song 
    song
  end
  
  def self.find_by_name(song_name)
    self.all.find{ |song|
      if song.name == song_name
           
      end
    }
  end
end
