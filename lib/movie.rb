# frozen_string_literal: true

class Movie
  attr_accessor :query_name, :name, :providers, :available

  def initialize(query_name, name, providers)
    @query_name = query_name
    @name = name
    @providers = providers
    @available = !@providers.empty?
  end
end
