class Song
  attr_accessor :artist, :name, :genre

  @@all = []

  def initialize(name)
    @name = name

    save
  end



end
