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

require "uri"

module QwilAPI
  class ManagersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Endpoint for the Platforms owned by a Manager
    # Endpoint for the Platforms owned by a Manager.
    # @param manager_pk 
    # @param name 
    # @param company_information 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :contact_information 
    # @option opts [String] :currency The ISO 4217 currency code for which all payments for this Platform are handled. Note: Immutable after Platform is created.
    # @option opts [String] :payment_schedule The frequency of contractor rebates on this platform.
    # @option opts [Date] :payment_date The date that the first payment is due for the platform&#39;s pay cycle.
    # @option opts [String] :accounts The accounts configured for billing on this Platform.
    # @option opts [String] :default_account The account to use for billing purposes.
    # @return [ManagerPlatformSerializer]
    def manager_platform_create(manager_pk, name, company_information, opts = {})
      data, _status_code, _headers = manager_platform_create_with_http_info(manager_pk, name, company_information, opts)
      return data
    end

    # Endpoint for the Platforms owned by a Manager
    # Endpoint for the Platforms owned by a Manager.
    # @param manager_pk 
    # @param name 
    # @param company_information 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :contact_information 
    # @option opts [String] :currency The ISO 4217 currency code for which all payments for this Platform are handled. Note: Immutable after Platform is created.
    # @option opts [String] :payment_schedule The frequency of contractor rebates on this platform.
    # @option opts [Date] :payment_date The date that the first payment is due for the platform&#39;s pay cycle.
    # @option opts [String] :accounts The accounts configured for billing on this Platform.
    # @option opts [String] :default_account The account to use for billing purposes.
    # @return [Array<(ManagerPlatformSerializer, Fixnum, Hash)>] ManagerPlatformSerializer data, response status code and response headers
    def manager_platform_create_with_http_info(manager_pk, name, company_information, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ManagersApi.manager_platform_create ..."
      end
      # verify the required parameter 'manager_pk' is set
      fail ArgumentError, "Missing the required parameter 'manager_pk' when calling ManagersApi.manager_platform_create" if manager_pk.nil?
      # verify the required parameter 'name' is set
      fail ArgumentError, "Missing the required parameter 'name' when calling ManagersApi.manager_platform_create" if name.nil?
      # verify the required parameter 'company_information' is set
      fail ArgumentError, "Missing the required parameter 'company_information' when calling ManagersApi.manager_platform_create" if company_information.nil?
      if opts[:'currency'] && !['USD', 'GBP'].include?(opts[:'currency'])
        fail ArgumentError, 'invalid value for "currency", must be one of USD, GBP'
      end
      if opts[:'payment_schedule'] && !['WEEKLY', 'FORTNIGHT', 'MONTHLY', 'DAILY'].include?(opts[:'payment_schedule'])
        fail ArgumentError, 'invalid value for "payment_schedule", must be one of WEEKLY, FORTNIGHT, MONTHLY, DAILY'
      end
      # resource path
      local_var_path = "/managers/{manager_pk}/platforms/".sub('{format}','json').sub('{' + 'manager_pk' + '}', manager_pk.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = []
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}
      form_params["name"] = name
      form_params["company_information"] = company_information
      form_params["contact_information"] = opts[:'contact_information'] if !opts[:'contact_information'].nil?
      form_params["currency"] = opts[:'currency'] if !opts[:'currency'].nil?
      form_params["payment_schedule"] = opts[:'payment_schedule'] if !opts[:'payment_schedule'].nil?
      form_params["payment_date"] = opts[:'payment_date'] if !opts[:'payment_date'].nil?
      form_params["accounts"] = opts[:'accounts'] if !opts[:'accounts'].nil?
      form_params["default_account"] = opts[:'default_account'] if !opts[:'default_account'].nil?

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ManagerPlatformSerializer')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagersApi#manager_platform_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Endpoint for the Platforms owned by a Manager
    # Endpoint for the Platforms owned by a Manager.
    # @param manager_pk 
    # @param [Hash] opts the optional parameters
    # @return [Array<ManagerPlatformSerializer>]
    def manager_platform_list(manager_pk, opts = {})
      data, _status_code, _headers = manager_platform_list_with_http_info(manager_pk, opts)
      return data
    end

    # Endpoint for the Platforms owned by a Manager
    # Endpoint for the Platforms owned by a Manager.
    # @param manager_pk 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<ManagerPlatformSerializer>, Fixnum, Hash)>] Array<ManagerPlatformSerializer> data, response status code and response headers
    def manager_platform_list_with_http_info(manager_pk, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ManagersApi.manager_platform_list ..."
      end
      # verify the required parameter 'manager_pk' is set
      fail ArgumentError, "Missing the required parameter 'manager_pk' when calling ManagersApi.manager_platform_list" if manager_pk.nil?
      # resource path
      local_var_path = "/managers/{manager_pk}/platforms/".sub('{format}','json').sub('{' + 'manager_pk' + '}', manager_pk.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = []
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<ManagerPlatformSerializer>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagersApi#manager_platform_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Endpoint for Manager objects, which describe entities that can create and manage Platforms
    # Endpoint for Manager objects, which describe entities that can create and manage Platforms.
    # @param pk 
    # @param [Hash] opts the optional parameters
    # @return [ManagerSerializer]
    def manager_retrieve(pk, opts = {})
      data, _status_code, _headers = manager_retrieve_with_http_info(pk, opts)
      return data
    end

    # Endpoint for Manager objects, which describe entities that can create and manage Platforms
    # Endpoint for Manager objects, which describe entities that can create and manage Platforms.
    # @param pk 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ManagerSerializer, Fixnum, Hash)>] ManagerSerializer data, response status code and response headers
    def manager_retrieve_with_http_info(pk, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ManagersApi.manager_retrieve ..."
      end
      # verify the required parameter 'pk' is set
      fail ArgumentError, "Missing the required parameter 'pk' when calling ManagersApi.manager_retrieve" if pk.nil?
      # resource path
      local_var_path = "/managers/{pk}/".sub('{format}','json').sub('{' + 'pk' + '}', pk.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = []
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ManagerSerializer')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagersApi#manager_retrieve\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
