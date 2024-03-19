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
  class InlineResponse20092Certifications
    attr_accessor :au, :br, :ca, :ca_qc, :de, :es, :fr, :gb, :hu, :kr, :lt, :nl, :ph, :pt, :ru, :sk, :th, :us, :it,
                  :fi, :my, :nz, :no, :bg, :mx, :_in, :dk, :se, :id, :tr, :ar, :pl, :ma, :gr, :il, :tw, :za, :sg, :pr, :vi

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        'au': :AU,
        'br': :BR,
        'ca': :CA,
        'ca_qc': :'CA-QC',
        'de': :DE,
        'es': :ES,
        'fr': :FR,
        'gb': :GB,
        'hu': :HU,
        'kr': :KR,
        'lt': :LT,
        'nl': :NL,
        'ph': :PH,
        'pt': :PT,
        'ru': :RU,
        'sk': :SK,
        'th': :TH,
        'us': :US,
        'it': :IT,
        'fi': :FI,
        'my': :MY,
        'nz': :NZ,
        'no': :NO,
        'bg': :BG,
        'mx': :MX,
        '_in': :IN,
        'dk': :DK,
        'se': :SE,
        'id': :ID,
        'tr': :TR,
        'ar': :AR,
        'pl': :PL,
        'ma': :MA,
        'gr': :GR,
        'il': :IL,
        'tw': :TW,
        'za': :ZA,
        'sg': :SG,
        'pr': :PR,
        'vi': :VI
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        'au': :Object,
        'br': :Object,
        'ca': :Object,
        'ca_qc': :Object,
        'de': :Object,
        'es': :Object,
        'fr': :Object,
        'gb': :Object,
        'hu': :Object,
        'kr': :Object,
        'lt': :Object,
        'nl': :Object,
        'ph': :Object,
        'pt': :Object,
        'ru': :Object,
        'sk': :Object,
        'th': :Object,
        'us': :Object,
        'it': :Object,
        'fi': :Object,
        'my': :Object,
        'nz': :Object,
        'no': :Object,
        'bg': :Object,
        'mx': :Object,
        '_in': :Object,
        'dk': :Object,
        'se': :Object,
        'id': :Object,
        'tr': :Object,
        'ar': :Object,
        'pl': :Object,
        'ma': :Object,
        'gr': :Object,
        'il': :Object,
        'tw': :Object,
        'za': :Object,
        'sg': :Object,
        'pr': :Object,
        'vi': :Object
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
              'The input argument (attributes) must be a hash in `SwaggerClient::InlineResponse20092Certifications` initialize method'
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) do |(k, v), h|
        unless self.class.attribute_map.key?(k.to_sym)
          raise ArgumentError,
                "`#{k}` is not a valid attribute in `SwaggerClient::InlineResponse20092Certifications`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end

        h[k.to_sym] = v
      end

      self.au = attributes[:au] if attributes.key?(:au)

      self.br = attributes[:br] if attributes.key?(:br)

      self.ca = attributes[:ca] if attributes.key?(:ca)

      self.ca_qc = attributes[:ca_qc] if attributes.key?(:ca_qc)

      self.de = attributes[:de] if attributes.key?(:de)

      self.es = attributes[:es] if attributes.key?(:es)

      self.fr = attributes[:fr] if attributes.key?(:fr)

      self.gb = attributes[:gb] if attributes.key?(:gb)

      self.hu = attributes[:hu] if attributes.key?(:hu)

      self.kr = attributes[:kr] if attributes.key?(:kr)

      self.lt = attributes[:lt] if attributes.key?(:lt)

      self.nl = attributes[:nl] if attributes.key?(:nl)

      self.ph = attributes[:ph] if attributes.key?(:ph)

      self.pt = attributes[:pt] if attributes.key?(:pt)

      self.ru = attributes[:ru] if attributes.key?(:ru)

      self.sk = attributes[:sk] if attributes.key?(:sk)

      self.th = attributes[:th] if attributes.key?(:th)

      self.us = attributes[:us] if attributes.key?(:us)

      self.it = attributes[:it] if attributes.key?(:it)

      self.fi = attributes[:fi] if attributes.key?(:fi)

      self.my = attributes[:my] if attributes.key?(:my)

      self.nz = attributes[:nz] if attributes.key?(:nz)

      self.no = attributes[:no] if attributes.key?(:no)

      self.bg = attributes[:bg] if attributes.key?(:bg)

      self.mx = attributes[:mx] if attributes.key?(:mx)

      self._in = attributes[:_in] if attributes.key?(:_in)

      self.dk = attributes[:dk] if attributes.key?(:dk)

      self.se = attributes[:se] if attributes.key?(:se)

      self.id = attributes[:id] if attributes.key?(:id)

      self.tr = attributes[:tr] if attributes.key?(:tr)

      self.ar = attributes[:ar] if attributes.key?(:ar)

      self.pl = attributes[:pl] if attributes.key?(:pl)

      self.ma = attributes[:ma] if attributes.key?(:ma)

      self.gr = attributes[:gr] if attributes.key?(:gr)

      self.il = attributes[:il] if attributes.key?(:il)

      self.tw = attributes[:tw] if attributes.key?(:tw)

      self.za = attributes[:za] if attributes.key?(:za)

      self.sg = attributes[:sg] if attributes.key?(:sg)

      self.pr = attributes[:pr] if attributes.key?(:pr)

      return unless attributes.key?(:vi)

      self.vi = attributes[:vi]
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
        au == other.au &&
        br == other.br &&
        ca == other.ca &&
        ca_qc == other.ca_qc &&
        de == other.de &&
        es == other.es &&
        fr == other.fr &&
        gb == other.gb &&
        hu == other.hu &&
        kr == other.kr &&
        lt == other.lt &&
        nl == other.nl &&
        ph == other.ph &&
        pt == other.pt &&
        ru == other.ru &&
        sk == other.sk &&
        th == other.th &&
        us == other.us &&
        it == other.it &&
        fi == other.fi &&
        my == other.my &&
        nz == other.nz &&
        no == other.no &&
        bg == other.bg &&
        mx == other.mx &&
        _in == other._in &&
        dk == other.dk &&
        se == other.se &&
        id == other.id &&
        tr == other.tr &&
        ar == other.ar &&
        pl == other.pl &&
        ma == other.ma &&
        gr == other.gr &&
        il == other.il &&
        tw == other.tw &&
        za == other.za &&
        sg == other.sg &&
        pr == other.pr &&
        vi == other.vi
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(other)
      self == other
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [au, br, ca, ca_qc, de, es, fr, gb, hu, kr, lt, nl, ph, pt, ru, sk, th, us, it, fi, my, nz, no, bg, mx, _in, dk,
       se, id, tr, ar, pl, ma, gr, il, tw, za, sg, pr, vi].hash
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
