require_relative '../api-cli/lib/swagger_client'

class GetMovieWatchProviders
  def initialize(params)
    @params = params
    @cli = SwaggerClient::DefaultApi.new
  end

  def call
    @cli.movie_watch_providers(movie_id, opts)
  end

  private

  def access_token
    ENV.fetch('TMDB_READ_ACCESS_TOKEN', nil)
  end

  def opts
    {
      header_params: {
        'Authorization' => "Bearer #{access_token}"
      },
      query_params:,
      return_type: 'Object'
    }
  end

  def movie_id
    @params[:movie_id]
  end

  def query_params
    { locale: 'AR' }
  end
end
