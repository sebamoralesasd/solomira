# frozen_string_literal: true

require_relative '../api-cli/lib/swagger_client'

class GetSearchMovie
  def initialize(params)
    @params = params
    @cli = SwaggerClient::DefaultApi.new
  end

  def call
    @cli.search_movie({}, opts)
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

  def query_params
    { query: @params[:query], language: 'en-US' }
  end
end
