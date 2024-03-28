# frozen_string_literal: true

require_relative 'strategy'

module Parser
  class TmdbResponse
    attr_accessor :offers, :title

    def initialize(params)
      @title = params[:title]
      @offers = params[:offers]
    end
  end

  class Tmdb < Strategy
    def execute(params)
      title = title(params)
      offers = offers(params)
      TmdbResponse.new(title:, offers:)
    end

    private

    def title(params)
      params[:movie][:title]
    end

    def offers(params)
      return [] if params[:providers].nil?

      params[:providers].map { |prv| prv[:provider_name] }
    end
  end
end
