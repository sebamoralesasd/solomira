# frozen_string_literal: true

require 'faraday'
require 'json'
require_relative 'clientdefaults'

module SoloMira
  class Client
    include ClientDefaults
    def initialize
      @conn = connection
    end

    def search_movie(query)
      payload = {
        query:,
        content_type: 'movie',
        page_size: PAGE_SIZE
      }

      response = @conn.post do |req|
        req.body = payload.to_json
      end

      response.body
    end

    private

    def connection
      headers = {
        'User-Agent' => 'JustWatch client github.com/sebamoralesasd/solomira'
      }
      Faraday.new(url: BASE_URL) do |faraday|
        faraday.adapter Faraday.default_adapter
        faraday.headers = headers
      end
    end
  end
end

cli = SoloMira::Client.new
puts cli.search_movie('Shrek')
