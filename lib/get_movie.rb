require_relative 'tmdb/services/get_search_movie'
require_relative 'tmdb/services/get_movie_watch_providers'

class GetMovie
  def initialize(params)
    @params = params
  end

  def call
    mov_result = movie
    movie_id = movie[:id]
    prov_result = provider(movie_id)

    { movie: mov_result, providers: prov_result }
  end

  def movie
    result = GetSearchMovie.new(@params).call

    result[:results].first
  end

  def provider(movie_id)
    result = GetMovieWatchProviders.new(movie_id:).call
    return [] if result[:results][:AR].nil? || result[:results][:AR][:flatrate].nil?

    result[:results][:AR][:flatrate]
  end
end
