class Cinema
  attr_accessor :name, :location

  def initialize(name, location)
    @name = name
    @location = location
    @movies = []
  end

  def add_movie(movie)
    @movies << movie
    movie.cinema = self
  end
end

class Movie
  attr_accessor :title, :showtime, :cinema

  @@all = []

  def initialize(title, showtime)
    @title = title
    @showtimes = showtime
    @@all << self
  end
end

bow_tie = Cinema.new("BowTie Cinema", "Main St, Richmond")
parasite = Movie.new("Parasite", "7:00")
bow_tie.add_movie(parasite)