# frozen_string_literal: true

require 'csv'
require 'json'
require_relative 'lib/movie'
require_relative 'lib/presenter'
require_relative 'lib/get_movie'
require_relative 'lib/parser/context'
require_relative 'lib/parser/tmdb'

class Watchlist
  def initialize
    @movies = []
    @watchlist = CSV.read(File.join(File.dirname(__FILE__), 'uploads', 'watchlist.csv'),
                          encoding: 'UTF-8')
                    .map { |row| row[1] }.drop(1)
  end

  def create_movie(query_name, name, providers)
    movie = Movie.new(query_name, name, providers)
    @movies << movie
    @movies.sort_by!(&:query_name)
  end

  def fetch_movies
    puts 'Cargando películas en la base de datos'
    @watchlist.each do |titulo|
      puts "Cargando #{titulo}"
      raw_results = GetMovie.new(query: titulo).call
      results = Parser::Context.new(Parser::Tmdb.new).execute(raw_results)
      next if results.nil?

      create_movie(titulo, results.title, results.offers)
    end
  end

  def movie
    pres = Presenter.new
    results = @movies.flat_map do |movie|
      [pres.present(movie), pres.available_in(movie)] if movie.available
    end

    results.join("\n")
  end
end

def movie
  w = Watchlist.new
  w.fetch_movies
  w.movie
  # w.unavailable_movies
end
