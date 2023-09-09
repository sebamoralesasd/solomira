# frozen_string_literal: true

module SoloMira
  class Connection
    def initialize(base_url)
      @base_url = base_url
      @http_cli = connection
    end

    def send_req(body = nil)
      @http_cli.post do |req|
        req.body = body.to_json
      end
    end

    private

    def connection
      headers = {
        'User-Agent' => 'JustWatch client github.com/sebamoralesasd/solomira'
      }
      Faraday.new(url: @base_url) do |faraday|
        faraday.adapter Faraday.default_adapter
        faraday.headers = headers
      end
    end
  end
end
