class MP3Importer
  
  attr_reader :path
  
  def initialize(filepath)
    @path = filepath
  end
  
  def files
    @files = Dir.entries(@path)
    @files.delete_if { |file| file == "." || file == ".."}
  end
  
  def import
    files.each {|song| Song.new_by_filename(song)}
  end
  
end