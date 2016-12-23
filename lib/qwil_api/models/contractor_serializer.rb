=begin
#No descripton provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 

Generated by: https://github.com/swagger-api/swagger-codegen.git

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

=end

require 'date'

module QwilAPI

  class ContractorSerializer
    attr_accessor :url

    attr_accessor :email

    # URL of the endpoint describing the User's Income.
    attr_accessor :income

    # DEPRECATED: The full name of the contractor. Use first_name/last_name instead.
    attr_accessor :name

    # First name, if the user is an individual. Leave blank if this user is a company.
    attr_accessor :first_name

    # Last name, if the user is an individual. Leave blank if this user is a company.
    attr_accessor :last_name

    # Business name. Only use this field if this user is a business entity.
    attr_accessor :business_name

    attr_accessor :contractor_type

    # URL of the endpoint describing the User's Accounts.
    attr_accessor :accounts

    # Default account to use for payment of unpaid income.
    attr_accessor :default_account

    # URL of the endpoint describing the User's Cashouts.
    attr_accessor :cashouts

    # Calculate what fees would be charged for a specific Cashout amount.
    attr_accessor :calculate_cashout_available

    # Flag specifying if the User has set their password.
    attr_accessor :has_password

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'url' => :'url',
        :'email' => :'email',
        :'income' => :'income',
        :'name' => :'name',
        :'first_name' => :'first_name',
        :'last_name' => :'last_name',
        :'business_name' => :'business_name',
        :'contractor_type' => :'contractor_type',
        :'accounts' => :'accounts',
        :'default_account' => :'default_account',
        :'cashouts' => :'cashouts',
        :'calculate_cashout_available' => :'calculate_cashout_available',
        :'has_password' => :'has_password'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'url' => :'String',
        :'email' => :'String',
        :'income' => :'String',
        :'name' => :'String',
        :'first_name' => :'String',
        :'last_name' => :'String',
        :'business_name' => :'String',
        :'contractor_type' => :'String',
        :'accounts' => :'String',
        :'default_account' => :'String',
        :'cashouts' => :'String',
        :'calculate_cashout_available' => :'String',
        :'has_password' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'url')
        self.url = attributes[:'url']
      end

      if attributes.has_key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.has_key?(:'income')
        self.income = attributes[:'income']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'first_name')
        self.first_name = attributes[:'first_name']
      end

      if attributes.has_key?(:'last_name')
        self.last_name = attributes[:'last_name']
      end

      if attributes.has_key?(:'business_name')
        self.business_name = attributes[:'business_name']
      end

      if attributes.has_key?(:'contractor_type')
        self.contractor_type = attributes[:'contractor_type']
      end

      if attributes.has_key?(:'accounts')
        self.accounts = attributes[:'accounts']
      end

      if attributes.has_key?(:'default_account')
        self.default_account = attributes[:'default_account']
      end

      if attributes.has_key?(:'cashouts')
        self.cashouts = attributes[:'cashouts']
      end

      if attributes.has_key?(:'calculate_cashout_available')
        self.calculate_cashout_available = attributes[:'calculate_cashout_available']
      end

      if attributes.has_key?(:'has_password')
        self.has_password = attributes[:'has_password']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @url.nil?
      return false if @email.nil?
      return false if @income.nil?
      return false if @name.nil?
      return false if @first_name.nil?
      return false if @last_name.nil?
      return false if @business_name.nil?
      return false if @contractor_type.nil?
      contractor_type_validator = EnumAttributeValidator.new('String', ["INDIVIDUAL", "BUSINESS"])
      return false unless contractor_type_validator.valid?(@contractor_type)
      return false if @accounts.nil?
      return false if @default_account.nil?
      return false if @cashouts.nil?
      return false if @calculate_cashout_available.nil?
      return false if @has_password.nil?
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] contractor_type Object to be assigned
    def contractor_type=(contractor_type)
      validator = EnumAttributeValidator.new('String', ["INDIVIDUAL", "BUSINESS"])
      unless validator.valid?(contractor_type)
        fail ArgumentError, "invalid value for 'contractor_type', must be one of #{validator.allowable_values}."
      end
      @contractor_type = contractor_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          url == o.url &&
          email == o.email &&
          income == o.income &&
          name == o.name &&
          first_name == o.first_name &&
          last_name == o.last_name &&
          business_name == o.business_name &&
          contractor_type == o.contractor_type &&
          accounts == o.accounts &&
          default_account == o.default_account &&
          cashouts == o.cashouts &&
          calculate_cashout_available == o.calculate_cashout_available &&
          has_password == o.has_password
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [url, email, income, name, first_name, last_name, business_name, contractor_type, accounts, default_account, cashouts, calculate_cashout_available, has_password].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /^Array<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
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
      when :BOOLEAN
        if value.to_s =~ /^(true|t|yes|y|1)$/i
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
      when /\AHash<(?<k_type>.+), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = QwilAPI.const_get(type).new
        temp_model.build_from_hash(value)
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
        value = self.send(attr)
        next if value.nil?
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
        value.compact.map{ |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
