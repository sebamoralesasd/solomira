# frozen_string_literal: true

module Parser
  class Context
    def initialize(algo)
      @algo = algo
    end

    def execute(params)
      @algo.execute(params)
    end
  end
end
