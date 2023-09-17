# frozen_string_literal: true

require 'csv'
require 'json'
require_relative 'solomira_cli'
require_relative 'movie'

class Group
  def by_provider(movies)
    lista = movies.flat_map { |mov| mov.providers.map { |prov| [prov, mov] } }
    inp = Hash.new { |hash, key| hash[key] = [] }

    lista.each { |k, v| inp[k] << v }
    inp.map { |k, v| { 'prov' => k, 'movie' => v.tally } }
  end
end

class Filter
  def streaming_list
    {
      'hbm' => 'HBO Max',
      'srp' => 'Star+',
      'ptv' => 'PlutoTV'
    }
  end

  def streaming(list)
    list.select { |dict| streaming_list.key?(dict['prov']) }
  end
end

class Formatter
  PROVIDER_LIST = {
    'hbm' => 'HBO Max',
    'itu' => 'Apple TV',
    'ply' => 'Google Play',
    'mvp' => 'Movistar Play',
    'prv' => 'Amazon Prime Video',
    'lgu' => 'Lionsgate Plus',
    'srp' => 'Star+',
    'pmp' => 'Paramount+',
    'nfx' => 'Netflix',
    'qbt' => 'QubitTV',
    'ptv' => 'PlutoTV',
    'dnp' => 'Disney+',
    'clv' => 'Claro Video',
    'mbi' => 'Mubi'
  }.freeze

  def get_provider(offer)
    PROVIDER_LIST[offer] || offer
  end

  def providers(movie)
    providers = movie.providers
    providers.map { |prov| get_provider(prov) }.uniq
  end
end

class Presenter
  def initialize
    @fmt = Formatter.new
  end

  def present(movie)
    puts "Título: #{movie.query_name}"
  end

  def available_in(movie)
    puts "Disponible en: #{@fmt.providers(movie)}"
  end

  def group_present(diccio)
    diccio.each do |val|
      puts @fmt.get_provider(val['prov'])
      val['movie'].each do |mov, count|
        puts "    -> #{mov.query_name} (#{count})"
      end
    end
  end
end

class Watchlist
  def initialize
    @movies = []
    @watchlist = CSV.read('watchlist.csv').map { |row| row[1] }.drop(1)
  end

  def create_movie(query_name, name, providers)
    movie = Movie.new(query_name, name, providers)
    @movies = (@movies + [movie]).sort_by(&:query_name)
  end

  def fetch_movies
    jw = JWQuery.new
    puts 'Cargando películas en la base de datos'
    @watchlist.each do |titulo|
      puts "Cargando #{titulo}"
      results = jw.request(titulo)
      create_movie(titulo, results.title, results.offers)
    end
  end

  def unavailable_movies
    puts "\n\nLas siguientes películas no están en ningún streaming:\n"
    pres = Presenter.new
    @movies.each { |movie| pres.present(movie) unless movie.available }
  end

  def movie
    pres = Presenter.new
    @movies.each do |movie|
      if movie.available
        pres.present(movie)
        pres.available_in(movie)
      end
    end
  end

  def provider
    diccio = Group.new.by_provider(@movies)
    filtrado = Filter.new.streaming(diccio)
    pres = Presenter.new
    pres.group_present(filtrado)
  end
end

# Assuming you have a way to handle CLI options in Ruby equivalent to 'click' (maybe using 'thor' gem)

def movie
  w = Watchlist.new
  w.fetch_movies
  w.movie
  # w.unavailable_movies
end

def streaming
  w = Watchlist.new
  w.fetch_movies
  w.provider
  w.unavailable_movies
end

movie
