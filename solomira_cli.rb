# frozen_string_literal: true

require_relative 'client'

class JWResponse
  attr_accessor :offers, :title

  def initialize(search_response)
    response = search_response['items'][0]
    @offers = response.key?('offers') ? response['offers'] : []
    @title = response['title']
  end
end

class JWQuery
  def initialize
    @client = SoloMira::Client.new
  end

  def request(query)
    search_response = @client.search_movie(query)
    result = JSON.parse(search_response)
    JWResponse.new(result)
  end
end
