class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end


  def song.create
    the_new_song = Song.new
    @@all << the_new_song
    
  end
end
