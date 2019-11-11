class Author
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def add_post(post)
    post.author = self
  end

  def posts
    Post.all.select {|post|post.author == self}
    #binding.pry
  end

  def add_song_by_name(name)
    song = Song.new(name)
    add_song(song)
  end

  def add_post_by_title(title)
    post = Post.new(title)
    add_post(post)
  end



end
