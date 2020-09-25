class MP3Importer
  
<<<<<<< HEAD
  attr_reader :path
=======
  attr_accessor :path
>>>>>>> 2bb232365360f94dc68d9a1f9333e09af4abb9cc
  
  def initialize(filepath)
    @path = filepath
  end
  
  def files
    @files = Dir.entries(@path)
    @files.delete_if { |file| file == "." || file == ".."}
  end
  
  def import
<<<<<<< HEAD
    files.each {|song| Song.new_by_filename(song)}
  end
  
=======
    
  end
>>>>>>> 2bb232365360f94dc68d9a1f9333e09af4abb9cc
end