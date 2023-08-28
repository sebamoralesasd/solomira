# frozen_string_literal: true

require 'faraday'
require 'json'
require_relative 'clientdefaults'

class SoloMira
  include ClientDefaults
  def initialize
    @conn = connection
  end

  def search_for_item(query)
    payload = {
      query:
    }

    response = @conn.post do |req|
      req.body = payload.to_json
    end

    puts response.body
  end

  private

  def connection
    headers = {
      'User-Agent' => 'JustWatch client sebamoralesasd'
    }
    Faraday.new(url: BASE_URL) do |faraday|
      faraday.adapter Faraday.default_adapter
      faraday.headers = headers
    end
  end
end

cli = SoloMira.new
cli.search_for_item('Shrek')
