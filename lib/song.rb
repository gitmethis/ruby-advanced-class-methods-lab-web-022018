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
      song.name == song_name
    }
  end
  
  def self.find_or_create_by_name(song_name)
    if self.find_by_name == nil
       self.create_by_name(song_name)   
    else  
       return self.find_by_name  
    end
  end
  
  def self.alphabetical
    self.all.sort_by{
      |song|
      song.name
    }
  end
  
  def self.new_from_filename(str)
    # SEPARATES ARTISTS FROM SONG NAMES
    arr = str.split('-')
    
    # SEPARATES MP3 FROM SONG NAME
    arr[1].split('.')
    arr[1][0] = ''
    arr[0][-1] = ''
    
    new_song = Song.new
    new_song.artist_name = arr[0]
    new_song.name = arr[1]
    song
  end
  
  def self.create_from_filename(filename)
    @@all << Song.new_from_filename(filename)
  end
end
