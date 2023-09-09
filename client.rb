# frozen_string_literal: true

require 'faraday'
require 'json'
require_relative 'clientdefaults'
require_relative 'connection'

module SoloMira
  class Client
    include ClientDefaults
    def initialize
      @conn = Connection.new(BASE_URL)
    end

    def search_movie(query)
      payload = {
        query:,
        content_type: 'movie',
        page_size: PAGE_SIZE
      }

      response = send_req(payload)
      response.body
    end

    private

    def send_req(body = nil)
      @conn.send_req(body)
    end
  end
end

# cli = SoloMira::Client.new
# puts cli.search_movie('Shrek')
