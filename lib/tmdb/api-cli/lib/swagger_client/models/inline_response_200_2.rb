# frozen_string_literal: true

# #TMDB API
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 3
#
# Generated by: https://github.com/swagger-api/swagger-codegen.git
# Swagger Codegen version: 3.0.54

require 'date'

module SwaggerClient
  class InlineResponse2002
    attr_accessor :adult, :backdrop_path, :belongs_to_collection, :budget, :genres, :homepage, :id, :imdb_id,
                  :original_language, :original_title, :overview, :popularity, :poster_path, :production_companies, :production_countries, :release_date, :revenue, :runtime, :spoken_languages, :status, :tagline, :title, :video, :vote_average, :vote_count

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        'adult': :adult,
        'backdrop_path': :backdrop_path,
        'belongs_to_collection': :belongs_to_collection,
        'budget': :budget,
        'genres': :genres,
        'homepage': :homepage,
        'id': :id,
        'imdb_id': :imdb_id,
        'original_language': :original_language,
        'original_title': :original_title,
        'overview': :overview,
        'popularity': :popularity,
        'poster_path': :poster_path,
        'production_companies': :production_companies,
        'production_countries': :production_countries,
        'release_date': :release_date,
        'revenue': :revenue,
        'runtime': :runtime,
        'spoken_languages': :spoken_languages,
        'status': :status,
        'tagline': :tagline,
        'title': :title,
        'video': :video,
        'vote_average': :vote_average,
        'vote_count': :vote_count
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        'adult': :Object,
        'backdrop_path': :Object,
        'belongs_to_collection': :Object,
        'budget': :Object,
        'genres': :Object,
        'homepage': :Object,
        'id': :Object,
        'imdb_id': :Object,
        'original_language': :Object,
        'original_title': :Object,
        'overview': :Object,
        'popularity': :Object,
        'poster_path': :Object,
        'production_companies': :Object,
        'production_countries': :Object,
        'release_date': :Object,
        'revenue': :Object,
        'runtime': :Object,
        'spoken_languages': :Object,
        'status': :Object,
        'tagline': :Object,
        'title': :Object,
        'video': :Object,
        'vote_average': :Object,
        'vote_count': :Object
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      unless attributes.is_a?(Hash)
        raise ArgumentError,
              'The input argument (attributes) must be a hash in `SwaggerClient::InlineResponse2002` initialize method'
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) do |(k, v), h|
        unless self.class.attribute_map.key?(k.to_sym)
          raise ArgumentError,
                "`#{k}` is not a valid attribute in `SwaggerClient::InlineResponse2002`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end

        h[k.to_sym] = v
      end

      self.adult = attributes[:adult] if attributes.key?(:adult)

      self.backdrop_path = attributes[:backdrop_path] if attributes.key?(:backdrop_path)

      self.belongs_to_collection = attributes[:belongs_to_collection] if attributes.key?(:belongs_to_collection)

      self.budget = attributes[:budget] if attributes.key?(:budget)

      self.genres = attributes[:genres] if attributes.key?(:genres)

      self.homepage = attributes[:homepage] if attributes.key?(:homepage)

      self.id = attributes[:id] if attributes.key?(:id)

      self.imdb_id = attributes[:imdb_id] if attributes.key?(:imdb_id)

      self.original_language = attributes[:original_language] if attributes.key?(:original_language)

      self.original_title = attributes[:original_title] if attributes.key?(:original_title)

      self.overview = attributes[:overview] if attributes.key?(:overview)

      self.popularity = attributes[:popularity] if attributes.key?(:popularity)

      self.poster_path = attributes[:poster_path] if attributes.key?(:poster_path)

      self.production_companies = attributes[:production_companies] if attributes.key?(:production_companies)

      self.production_countries = attributes[:production_countries] if attributes.key?(:production_countries)

      self.release_date = attributes[:release_date] if attributes.key?(:release_date)

      self.revenue = attributes[:revenue] if attributes.key?(:revenue)

      self.runtime = attributes[:runtime] if attributes.key?(:runtime)

      self.spoken_languages = attributes[:spoken_languages] if attributes.key?(:spoken_languages)

      self.status = attributes[:status] if attributes.key?(:status)

      self.tagline = attributes[:tagline] if attributes.key?(:tagline)

      self.title = attributes[:title] if attributes.key?(:title)

      self.video = attributes[:video] if attributes.key?(:video)

      self.vote_average = attributes[:vote_average] if attributes.key?(:vote_average)

      return unless attributes.key?(:vote_count)

      self.vote_count = attributes[:vote_count]
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      []
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        adult == other.adult &&
        backdrop_path == other.backdrop_path &&
        belongs_to_collection == other.belongs_to_collection &&
        budget == other.budget &&
        genres == other.genres &&
        homepage == other.homepage &&
        id == other.id &&
        imdb_id == other.imdb_id &&
        original_language == other.original_language &&
        original_title == other.original_title &&
        overview == other.overview &&
        popularity == other.popularity &&
        poster_path == other.poster_path &&
        production_companies == other.production_companies &&
        production_countries == other.production_countries &&
        release_date == other.release_date &&
        revenue == other.revenue &&
        runtime == other.runtime &&
        spoken_languages == other.spoken_languages &&
        status == other.status &&
        tagline == other.tagline &&
        title == other.title &&
        video == other.video &&
        vote_average == other.vote_average &&
        vote_count == other.vote_count
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(other)
      self == other
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [adult, backdrop_path, belongs_to_collection, budget, genres, homepage, id, imdb_id, original_language,
       original_title, overview, popularity, poster_path, production_companies, production_countries, release_date, revenue, runtime, spoken_languages, status, tagline, title, video, vote_average, vote_count].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)

      self.class.openapi_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            send("#{key}=", attributes[self.class.attribute_map[key]].map do |v|
                              _deserialize(::Regexp.last_match(1), v)
                            end)
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        elsif attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          send("#{key}=", nil)
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        SwaggerClient.const_get(type).build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end end
end
