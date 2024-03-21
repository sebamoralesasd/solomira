require_relative '../tmdb-api/lib/swagger_client'

class GetDiscoverMovie
  def initialize(params)
    @params = params
    @cli = SwaggerClient::DefaultApi.new
  end

  def call
    @cli.discover_movie(opts)
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
      return_type: 'Object'
    }
  end
end
