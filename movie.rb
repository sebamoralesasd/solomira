# frozen_string_literal: true

class Movie
  attr_accessor :query_name, :name, :providers, :available

  def initialize(query_name, name, providers)
    @query_name = query_name
    @name = name
    @providers = get_provider(providers)
    @available = !@providers.empty?
  end

  def get_provider(providers)
    providers.map { |prov| prov['package_short_name'] }
  end
end
