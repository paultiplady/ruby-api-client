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

  class UserSerializer
    attr_accessor :url

    attr_accessor :email

    # DEPRECATED: The full name of the contractor. Use first_name/last_name instead.
    attr_accessor :name

    # First name, if the user is an individual. Leave blank if this user is a company.
    attr_accessor :first_name

    # Last name, if the user is an individual. Leave blank if this user is a company.
    attr_accessor :last_name

    # Business name. Only use this field if this user is a business entity.
    attr_accessor :business_name

    attr_accessor :contractor_type

    # Default account to use for payment of unpaid income.
    attr_accessor :default_account

    # Status of the User's KYC check.
    attr_accessor :kyc_status

    # Account to use for tax savings.
    attr_accessor :tax_savings_account

    # The percent of income to be withheld for tax savings purposes.
    attr_accessor :tax_savings_percent

    # Feature flag specifying if Plaid integration should be used.
    attr_accessor :use_plaid

    # Feature flag specifying if IncomeRequests should be enabled for this user.
    attr_accessor :use_income_requests

    # Feature flag specifying if tax savings should be enabled.
    attr_accessor :use_tax_savings

    # Whether or not all income should be immediately cashed out for this user.
    attr_accessor :is_auto_cashout_enabled

    # URL of the endpoint describing the User's Income.
    attr_accessor :income

    # URL of the endpoint describing the User's Cashouts.
    attr_accessor :cashouts

    # URL of the endpoint describing the User's Cashouts.
    attr_accessor :receivables

    # URL of the endpoint describing the User's Accounts.
    attr_accessor :accounts

    # The platforms that this User is an Admin for.
    attr_accessor :administered_platforms

    # The dollar amount available for Cashout.
    attr_accessor :cashout_available

    # The dollar amount of Income not yet paid (Cashout/Rebate).
    attr_accessor :unpaid_income

    # URL for tax savings information for the given User.
    attr_accessor :tax_savings

    # URL of the platform that the User is contracting for.
    attr_accessor :platform

    attr_accessor :platform_summary

    # URL of the list of platform membership requests.
    attr_accessor :platform_membership_requests

    # URL of the list of income requests.
    attr_accessor :income_requests

    # Flag specifying if the User has access to the Platform Admin UI.
    attr_accessor :is_platform_admin

    # Flag specifying if the User has set their password.
    attr_accessor :has_password

    # Percentage amount charged for each Cashout.
    attr_accessor :cashout_fee_percent

    attr_accessor :personal_information

    # Calculate what fees would be charged for a specific Cashout amount.
    attr_accessor :calculate_cashout_available

    attr_accessor :managers

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
        :'name' => :'name',
        :'first_name' => :'first_name',
        :'last_name' => :'last_name',
        :'business_name' => :'business_name',
        :'contractor_type' => :'contractor_type',
        :'default_account' => :'default_account',
        :'kyc_status' => :'kyc_status',
        :'tax_savings_account' => :'tax_savings_account',
        :'tax_savings_percent' => :'tax_savings_percent',
        :'use_plaid' => :'use_plaid',
        :'use_income_requests' => :'use_income_requests',
        :'use_tax_savings' => :'use_tax_savings',
        :'is_auto_cashout_enabled' => :'is_auto_cashout_enabled',
        :'income' => :'income',
        :'cashouts' => :'cashouts',
        :'receivables' => :'receivables',
        :'accounts' => :'accounts',
        :'administered_platforms' => :'administered_platforms',
        :'cashout_available' => :'cashout_available',
        :'unpaid_income' => :'unpaid_income',
        :'tax_savings' => :'tax_savings',
        :'platform' => :'platform',
        :'platform_summary' => :'platform_summary',
        :'platform_membership_requests' => :'platform_membership_requests',
        :'income_requests' => :'income_requests',
        :'is_platform_admin' => :'is_platform_admin',
        :'has_password' => :'has_password',
        :'cashout_fee_percent' => :'cashout_fee_percent',
        :'personal_information' => :'personal_information',
        :'calculate_cashout_available' => :'calculate_cashout_available',
        :'managers' => :'managers'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'url' => :'String',
        :'email' => :'String',
        :'name' => :'String',
        :'first_name' => :'String',
        :'last_name' => :'String',
        :'business_name' => :'String',
        :'contractor_type' => :'String',
        :'default_account' => :'String',
        :'kyc_status' => :'String',
        :'tax_savings_account' => :'String',
        :'tax_savings_percent' => :'String',
        :'use_plaid' => :'BOOLEAN',
        :'use_income_requests' => :'BOOLEAN',
        :'use_tax_savings' => :'BOOLEAN',
        :'is_auto_cashout_enabled' => :'BOOLEAN',
        :'income' => :'String',
        :'cashouts' => :'String',
        :'receivables' => :'String',
        :'accounts' => :'String',
        :'administered_platforms' => :'String',
        :'cashout_available' => :'String',
        :'unpaid_income' => :'String',
        :'tax_savings' => :'String',
        :'platform' => :'String',
        :'platform_summary' => :'PlatformSummarySerializer',
        :'platform_membership_requests' => :'String',
        :'income_requests' => :'String',
        :'is_platform_admin' => :'String',
        :'has_password' => :'String',
        :'cashout_fee_percent' => :'String',
        :'personal_information' => :'PersonalInformationSerializer',
        :'calculate_cashout_available' => :'String',
        :'managers' => :'Array<String>'
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

      if attributes.has_key?(:'default_account')
        self.default_account = attributes[:'default_account']
      end

      if attributes.has_key?(:'kyc_status')
        self.kyc_status = attributes[:'kyc_status']
      end

      if attributes.has_key?(:'tax_savings_account')
        self.tax_savings_account = attributes[:'tax_savings_account']
      end

      if attributes.has_key?(:'tax_savings_percent')
        self.tax_savings_percent = attributes[:'tax_savings_percent']
      end

      if attributes.has_key?(:'use_plaid')
        self.use_plaid = attributes[:'use_plaid']
      end

      if attributes.has_key?(:'use_income_requests')
        self.use_income_requests = attributes[:'use_income_requests']
      end

      if attributes.has_key?(:'use_tax_savings')
        self.use_tax_savings = attributes[:'use_tax_savings']
      end

      if attributes.has_key?(:'is_auto_cashout_enabled')
        self.is_auto_cashout_enabled = attributes[:'is_auto_cashout_enabled']
      end

      if attributes.has_key?(:'income')
        self.income = attributes[:'income']
      end

      if attributes.has_key?(:'cashouts')
        self.cashouts = attributes[:'cashouts']
      end

      if attributes.has_key?(:'receivables')
        self.receivables = attributes[:'receivables']
      end

      if attributes.has_key?(:'accounts')
        self.accounts = attributes[:'accounts']
      end

      if attributes.has_key?(:'administered_platforms')
        self.administered_platforms = attributes[:'administered_platforms']
      end

      if attributes.has_key?(:'cashout_available')
        self.cashout_available = attributes[:'cashout_available']
      end

      if attributes.has_key?(:'unpaid_income')
        self.unpaid_income = attributes[:'unpaid_income']
      end

      if attributes.has_key?(:'tax_savings')
        self.tax_savings = attributes[:'tax_savings']
      end

      if attributes.has_key?(:'platform')
        self.platform = attributes[:'platform']
      end

      if attributes.has_key?(:'platform_summary')
        self.platform_summary = attributes[:'platform_summary']
      end

      if attributes.has_key?(:'platform_membership_requests')
        self.platform_membership_requests = attributes[:'platform_membership_requests']
      end

      if attributes.has_key?(:'income_requests')
        self.income_requests = attributes[:'income_requests']
      end

      if attributes.has_key?(:'is_platform_admin')
        self.is_platform_admin = attributes[:'is_platform_admin']
      end

      if attributes.has_key?(:'has_password')
        self.has_password = attributes[:'has_password']
      end

      if attributes.has_key?(:'cashout_fee_percent')
        self.cashout_fee_percent = attributes[:'cashout_fee_percent']
      end

      if attributes.has_key?(:'personal_information')
        self.personal_information = attributes[:'personal_information']
      end

      if attributes.has_key?(:'calculate_cashout_available')
        self.calculate_cashout_available = attributes[:'calculate_cashout_available']
      end

      if attributes.has_key?(:'managers')
        if (value = attributes[:'managers']).is_a?(Array)
          self.managers = value
        end
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
      return false if @name.nil?
      return false if @first_name.nil?
      return false if @last_name.nil?
      return false if @business_name.nil?
      return false if @contractor_type.nil?
      contractor_type_validator = EnumAttributeValidator.new('String', ["INDIVIDUAL", "BUSINESS"])
      return false unless contractor_type_validator.valid?(@contractor_type)
      return false if @default_account.nil?
      return false if @kyc_status.nil?
      kyc_status_validator = EnumAttributeValidator.new('String', ["NOT_CHECKED", "PENDING", "APPROVED", "DENIED"])
      return false unless kyc_status_validator.valid?(@kyc_status)
      return false if @tax_savings_account.nil?
      return false if @tax_savings_percent.nil?
      return false if @use_plaid.nil?
      return false if @use_income_requests.nil?
      return false if @use_tax_savings.nil?
      return false if @is_auto_cashout_enabled.nil?
      return false if @income.nil?
      return false if @cashouts.nil?
      return false if @receivables.nil?
      return false if @accounts.nil?
      return false if @administered_platforms.nil?
      return false if @cashout_available.nil?
      return false if @unpaid_income.nil?
      return false if @tax_savings.nil?
      return false if @platform.nil?
      return false if @platform_summary.nil?
      return false if @platform_membership_requests.nil?
      return false if @income_requests.nil?
      return false if @is_platform_admin.nil?
      return false if @has_password.nil?
      return false if @cashout_fee_percent.nil?
      return false if @personal_information.nil?
      return false if @calculate_cashout_available.nil?
      return false if @managers.nil?
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

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] kyc_status Object to be assigned
    def kyc_status=(kyc_status)
      validator = EnumAttributeValidator.new('String', ["NOT_CHECKED", "PENDING", "APPROVED", "DENIED"])
      unless validator.valid?(kyc_status)
        fail ArgumentError, "invalid value for 'kyc_status', must be one of #{validator.allowable_values}."
      end
      @kyc_status = kyc_status
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          url == o.url &&
          email == o.email &&
          name == o.name &&
          first_name == o.first_name &&
          last_name == o.last_name &&
          business_name == o.business_name &&
          contractor_type == o.contractor_type &&
          default_account == o.default_account &&
          kyc_status == o.kyc_status &&
          tax_savings_account == o.tax_savings_account &&
          tax_savings_percent == o.tax_savings_percent &&
          use_plaid == o.use_plaid &&
          use_income_requests == o.use_income_requests &&
          use_tax_savings == o.use_tax_savings &&
          is_auto_cashout_enabled == o.is_auto_cashout_enabled &&
          income == o.income &&
          cashouts == o.cashouts &&
          receivables == o.receivables &&
          accounts == o.accounts &&
          administered_platforms == o.administered_platforms &&
          cashout_available == o.cashout_available &&
          unpaid_income == o.unpaid_income &&
          tax_savings == o.tax_savings &&
          platform == o.platform &&
          platform_summary == o.platform_summary &&
          platform_membership_requests == o.platform_membership_requests &&
          income_requests == o.income_requests &&
          is_platform_admin == o.is_platform_admin &&
          has_password == o.has_password &&
          cashout_fee_percent == o.cashout_fee_percent &&
          personal_information == o.personal_information &&
          calculate_cashout_available == o.calculate_cashout_available &&
          managers == o.managers
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [url, email, name, first_name, last_name, business_name, contractor_type, default_account, kyc_status, tax_savings_account, tax_savings_percent, use_plaid, use_income_requests, use_tax_savings, is_auto_cashout_enabled, income, cashouts, receivables, accounts, administered_platforms, cashout_available, unpaid_income, tax_savings, platform, platform_summary, platform_membership_requests, income_requests, is_platform_admin, has_password, cashout_fee_percent, personal_information, calculate_cashout_available, managers].hash
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
