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

require 'spec_helper'
require 'json'

# Unit tests for QwilAPI::UsersApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'UsersApi' do
  before do
    # run before each test
    @instance = QwilAPI::UsersApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of UsersApi' do
    it 'should create an instact of UsersApi' do
      expect(@instance).to be_instance_of(QwilAPI::UsersApi)
    end
  end

  # unit tests for account_user_create
  # The bank accounts for a specific User
  # The bank accounts for a specific User. Enables create, retrieve, update (PUT/PATCH), destroy, and list.&lt;br/&gt;Note that the Account DB models are immutable, but the PUT/PATCH/DELETE API methods are still offered to allow users to modify/remove Accounts.&lt;br/&gt;The PUT/PATCH HTTP methods will create a new Account with the same data as the old one, and then apply the update to that new account. The old Account will be marked as deleted.&lt;br/&gt;NOTE: if you update an Account, it will get a new primary key, and therefore a new URL. You will need to extract the new URL from the body of the HTTP response to the update request.&lt;br/&gt;e.g. PATCH https://api.qwil.co/accounts/1/ {...} {   \&quot;url\&quot;: \&quot;https://api.qwil.co/accounts/2/\&quot;,   ... }&lt;br/&gt;The DELETE HTTP method will cause Accounts to have the Account.deleted flag set to True, and such Accounts will not be displayed in the /users/&lt;user_id&gt;/accounts/ list.&lt;br/&gt;To view even deleted accounts, use the URL /users/&lt;user_id&gt;/accounts/?show_deleted&#x3D;true&lt;br/&gt;Note that deleted Accounts can still be retrieved directly, e.g.&lt;br/&gt;GET https://api.qwil.co/accounts/1/ {   ...   \&quot;deleted\&quot;: \&quot;true\&quot;,   ... }
  # @param user_pk 
  # @param account_number 
  # @param name The user&#39;s label for this Account.
  # @param routing_number The inter-bank routing nubmer for this Account. 8 or 9 digits in length.
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :is_paypal Flag specifying if the Account is a Paypal account.
  # @option opts [BOOLEAN] :is_mychoice Flag specifying if the Account is a MyChoice card. If it is, the mychoice_user_id and mychoice_card_id must be filled in.
  # @option opts [Integer] :mychoice_user_id For MyChoice Accounts. Populated from the MyChoice API.
  # @option opts [Integer] :mychoice_card_id For MyChoice Accounts. Populated from the MyChoice API.
  # @return [UserAccountSerializer]
  describe 'account_user_create test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for account_user_destroy
  # The bank accounts for a specific User
  # The bank accounts for a specific User. Enables create, retrieve, update (PUT/PATCH), destroy, and list.&lt;br/&gt;Note that the Account DB models are immutable, but the PUT/PATCH/DELETE API methods are still offered to allow users to modify/remove Accounts.&lt;br/&gt;The PUT/PATCH HTTP methods will create a new Account with the same data as the old one, and then apply the update to that new account. The old Account will be marked as deleted.&lt;br/&gt;NOTE: if you update an Account, it will get a new primary key, and therefore a new URL. You will need to extract the new URL from the body of the HTTP response to the update request.&lt;br/&gt;e.g. PATCH https://api.qwil.co/accounts/1/ {...} {   \&quot;url\&quot;: \&quot;https://api.qwil.co/accounts/2/\&quot;,   ... }&lt;br/&gt;The DELETE HTTP method will cause Accounts to have the Account.deleted flag set to True, and such Accounts will not be displayed in the /users/&lt;user_id&gt;/accounts/ list.&lt;br/&gt;To view even deleted accounts, use the URL /users/&lt;user_id&gt;/accounts/?show_deleted&#x3D;true&lt;br/&gt;Note that deleted Accounts can still be retrieved directly, e.g.&lt;br/&gt;GET https://api.qwil.co/accounts/1/ {   ...   \&quot;deleted\&quot;: \&quot;true\&quot;,   ... }
  # @param user_pk 
  # @param pk 
  # @param [Hash] opts the optional parameters
  # @return [UserAccountSerializer]
  describe 'account_user_destroy test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for account_user_list
  # The bank accounts for a specific User
  # The bank accounts for a specific User. Enables create, retrieve, update (PUT/PATCH), destroy, and list.&lt;br/&gt;Note that the Account DB models are immutable, but the PUT/PATCH/DELETE API methods are still offered to allow users to modify/remove Accounts.&lt;br/&gt;The PUT/PATCH HTTP methods will create a new Account with the same data as the old one, and then apply the update to that new account. The old Account will be marked as deleted.&lt;br/&gt;NOTE: if you update an Account, it will get a new primary key, and therefore a new URL. You will need to extract the new URL from the body of the HTTP response to the update request.&lt;br/&gt;e.g. PATCH https://api.qwil.co/accounts/1/ {...} {   \&quot;url\&quot;: \&quot;https://api.qwil.co/accounts/2/\&quot;,   ... }&lt;br/&gt;The DELETE HTTP method will cause Accounts to have the Account.deleted flag set to True, and such Accounts will not be displayed in the /users/&lt;user_id&gt;/accounts/ list.&lt;br/&gt;To view even deleted accounts, use the URL /users/&lt;user_id&gt;/accounts/?show_deleted&#x3D;true&lt;br/&gt;Note that deleted Accounts can still be retrieved directly, e.g.&lt;br/&gt;GET https://api.qwil.co/accounts/1/ {   ...   \&quot;deleted\&quot;: \&quot;true\&quot;,   ... }
  # @param user_pk 
  # @param [Hash] opts the optional parameters
  # @return [Array<UserAccountSerializer>]
  describe 'account_user_list test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for account_user_partial_update
  # The bank accounts for a specific User
  # The bank accounts for a specific User. Enables create, retrieve, update (PUT/PATCH), destroy, and list.&lt;br/&gt;Note that the Account DB models are immutable, but the PUT/PATCH/DELETE API methods are still offered to allow users to modify/remove Accounts.&lt;br/&gt;The PUT/PATCH HTTP methods will create a new Account with the same data as the old one, and then apply the update to that new account. The old Account will be marked as deleted.&lt;br/&gt;NOTE: if you update an Account, it will get a new primary key, and therefore a new URL. You will need to extract the new URL from the body of the HTTP response to the update request.&lt;br/&gt;e.g. PATCH https://api.qwil.co/accounts/1/ {...} {   \&quot;url\&quot;: \&quot;https://api.qwil.co/accounts/2/\&quot;,   ... }&lt;br/&gt;The DELETE HTTP method will cause Accounts to have the Account.deleted flag set to True, and such Accounts will not be displayed in the /users/&lt;user_id&gt;/accounts/ list.&lt;br/&gt;To view even deleted accounts, use the URL /users/&lt;user_id&gt;/accounts/?show_deleted&#x3D;true&lt;br/&gt;Note that deleted Accounts can still be retrieved directly, e.g.&lt;br/&gt;GET https://api.qwil.co/accounts/1/ {   ...   \&quot;deleted\&quot;: \&quot;true\&quot;,   ... }
  # @param user_pk 
  # @param pk 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :account_number 
  # @option opts [String] :name The user&#39;s label for this Account.
  # @option opts [String] :routing_number The inter-bank routing nubmer for this Account. 8 or 9 digits in length.
  # @option opts [BOOLEAN] :is_paypal Flag specifying if the Account is a Paypal account.
  # @option opts [BOOLEAN] :is_mychoice Flag specifying if the Account is a MyChoice card. If it is, the mychoice_user_id and mychoice_card_id must be filled in.
  # @option opts [Integer] :mychoice_user_id For MyChoice Accounts. Populated from the MyChoice API.
  # @option opts [Integer] :mychoice_card_id For MyChoice Accounts. Populated from the MyChoice API.
  # @return [UserAccountSerializer]
  describe 'account_user_partial_update test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for account_user_retrieve
  # The bank accounts for a specific User
  # The bank accounts for a specific User. Enables create, retrieve, update (PUT/PATCH), destroy, and list.&lt;br/&gt;Note that the Account DB models are immutable, but the PUT/PATCH/DELETE API methods are still offered to allow users to modify/remove Accounts.&lt;br/&gt;The PUT/PATCH HTTP methods will create a new Account with the same data as the old one, and then apply the update to that new account. The old Account will be marked as deleted.&lt;br/&gt;NOTE: if you update an Account, it will get a new primary key, and therefore a new URL. You will need to extract the new URL from the body of the HTTP response to the update request.&lt;br/&gt;e.g. PATCH https://api.qwil.co/accounts/1/ {...} {   \&quot;url\&quot;: \&quot;https://api.qwil.co/accounts/2/\&quot;,   ... }&lt;br/&gt;The DELETE HTTP method will cause Accounts to have the Account.deleted flag set to True, and such Accounts will not be displayed in the /users/&lt;user_id&gt;/accounts/ list.&lt;br/&gt;To view even deleted accounts, use the URL /users/&lt;user_id&gt;/accounts/?show_deleted&#x3D;true&lt;br/&gt;Note that deleted Accounts can still be retrieved directly, e.g.&lt;br/&gt;GET https://api.qwil.co/accounts/1/ {   ...   \&quot;deleted\&quot;: \&quot;true\&quot;,   ... }
  # @param user_pk 
  # @param pk 
  # @param [Hash] opts the optional parameters
  # @return [UserAccountSerializer]
  describe 'account_user_retrieve test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for account_user_update
  # The bank accounts for a specific User
  # The bank accounts for a specific User. Enables create, retrieve, update (PUT/PATCH), destroy, and list.&lt;br/&gt;Note that the Account DB models are immutable, but the PUT/PATCH/DELETE API methods are still offered to allow users to modify/remove Accounts.&lt;br/&gt;The PUT/PATCH HTTP methods will create a new Account with the same data as the old one, and then apply the update to that new account. The old Account will be marked as deleted.&lt;br/&gt;NOTE: if you update an Account, it will get a new primary key, and therefore a new URL. You will need to extract the new URL from the body of the HTTP response to the update request.&lt;br/&gt;e.g. PATCH https://api.qwil.co/accounts/1/ {...} {   \&quot;url\&quot;: \&quot;https://api.qwil.co/accounts/2/\&quot;,   ... }&lt;br/&gt;The DELETE HTTP method will cause Accounts to have the Account.deleted flag set to True, and such Accounts will not be displayed in the /users/&lt;user_id&gt;/accounts/ list.&lt;br/&gt;To view even deleted accounts, use the URL /users/&lt;user_id&gt;/accounts/?show_deleted&#x3D;true&lt;br/&gt;Note that deleted Accounts can still be retrieved directly, e.g.&lt;br/&gt;GET https://api.qwil.co/accounts/1/ {   ...   \&quot;deleted\&quot;: \&quot;true\&quot;,   ... }
  # @param user_pk 
  # @param pk 
  # @param account_number 
  # @param name The user&#39;s label for this Account.
  # @param routing_number The inter-bank routing nubmer for this Account. 8 or 9 digits in length.
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :is_paypal Flag specifying if the Account is a Paypal account.
  # @option opts [BOOLEAN] :is_mychoice Flag specifying if the Account is a MyChoice card. If it is, the mychoice_user_id and mychoice_card_id must be filled in.
  # @option opts [Integer] :mychoice_user_id For MyChoice Accounts. Populated from the MyChoice API.
  # @option opts [Integer] :mychoice_card_id For MyChoice Accounts. Populated from the MyChoice API.
  # @return [UserAccountSerializer]
  describe 'account_user_update test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for admin_platform_create
  # View to create new platforms on which the user is an admin
  # View to create new platforms on which the user is an admin.&lt;br/&gt;POSTing to this endpoint will create a new Platform with the specified name, and will set the current User as an Admin on that platform.
  # @param user_pk 
  # @param name 
  # @param [Hash] opts the optional parameters
  # @return [PlatformSummarySerializer]
  describe 'admin_platform_create test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for cancel_income_request_get
  # On GET, cancel the income request
  # View to offer a ./cancel endpoint for cancelling an IncomeRequest.  &lt;br/&gt;On GET, cancel the income request.&lt;br/&gt;Keep GET for browsability on the API.
  # @param user_pk 
  # @param pk 
  # @param [Hash] opts the optional parameters
  # @return [Object]
  describe 'cancel_income_request_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for cancel_income_request_post
  # On POST, cancel the income request
  # View to offer a ./cancel endpoint for cancelling an IncomeRequest.  &lt;br/&gt;On POST, cancel the income request.
  # @param user_pk 
  # @param pk 
  # @param [Hash] opts the optional parameters
  # @return [Object]
  describe 'cancel_income_request_post test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for cancel_platform_membership_request_get
  # On GET, cancel the membership request
  # View to offer a ./accept endpoint for accepting a PlatformMembershipRequest.  &lt;br/&gt;On GET, cancel the membership request.&lt;br/&gt;Keep GET for browsability on the API.
  # @param user_pk 
  # @param pk 
  # @param [Hash] opts the optional parameters
  # @return [Object]
  describe 'cancel_platform_membership_request_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for cancel_platform_membership_request_post
  # On POST, cancel the membership request
  # View to offer a ./accept endpoint for accepting a PlatformMembershipRequest.  &lt;br/&gt;On POST, cancel the membership request.
  # @param user_pk 
  # @param pk 
  # @param [Hash] opts the optional parameters
  # @return [Object]
  describe 'cancel_platform_membership_request_post test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for cashout_available_create
  # Calculate the fees for a specific Cashout amount
  # Calculate the fees for a specific Cashout amount.&lt;br/&gt;This returns the fees for a specific cashout amount, plus the maximum amount available.
  # @param user_pk 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :amount The Cashout amount to calculate fees for. (This amount is net, i.e. before fees).
  # @return [CashoutCalculationSerializer]
  describe 'cashout_available_create test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for cashout_available_retrieve
  # Calculate the available cashout for a User
  # Calculate the available cashout for a User.&lt;br/&gt;This returns the maximum cashout amount available, and the fee for that amount.
  # @param user_pk 
  # @param [Hash] opts the optional parameters
  # @return [CashoutCalculationSerializer]
  describe 'cashout_available_retrieve test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for cashout_user_viewset_create
  # The Cashouts for a specific User
  # The Cashouts for a specific User. Enables create, retrieve, list.
  # @param user_pk 
  # @param amount 
  # @param [Hash] opts the optional parameters
  # @option opts [DateTime] :cashout_time 
  # @option opts [String] :notes 
  # @option opts [String] :type 
  # @option opts [String] :method 
  # @option opts [DateTime] :transmit_time 
  # @option opts [String] :rebate The Rebate against which this Cashout will be collected.
  # @option opts [String] :account 
  # @return [UserCashoutSerializer]
  describe 'cashout_user_viewset_create test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for cashout_user_viewset_list
  # The Cashouts for a specific User
  # The Cashouts for a specific User. Enables create, retrieve, list.
  # @param user_pk 
  # @param [Hash] opts the optional parameters
  # @return [Array<UserCashoutSerializer>]
  describe 'cashout_user_viewset_list test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for cashout_user_viewset_retrieve
  # The Cashouts for a specific User
  # The Cashouts for a specific User. Enables create, retrieve, list.
  # @param user_pk 
  # @param pk 
  # @param [Hash] opts the optional parameters
  # @return [UserCashoutSerializer]
  describe 'cashout_user_viewset_retrieve test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for income_user_list
  # The list of Income items for a specific User
  # The list of Income items for a specific User.&lt;br/&gt;This can be filtered by date using the start_date and end_date query parameters.
  # @param user_pk 
  # @param [Hash] opts the optional parameters
  # @return [Array<IncomeSerializerFixedSource>]
  describe 'income_user_list test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for my_user_partial_update
  # The currently logged in User
  # The currently logged in User.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :email 
  # @option opts [String] :first_name First name, if the user is an individual. Leave blank if this user is a company.
  # @option opts [String] :last_name Last name, if the user is an individual. Leave blank if this user is a company.
  # @option opts [String] :business_name Business name. Only use this field if this user is a business entity.
  # @option opts [String] :contractor_type 
  # @option opts [String] :default_account Default account to use for payment of unpaid income.
  # @option opts [String] :tax_savings_account Account to use for tax savings.
  # @option opts [String] :tax_savings_percent The percent of income to be withheld for tax savings purposes.
  # @option opts [BOOLEAN] :use_plaid Feature flag specifying if Plaid integration should be used.
  # @option opts [BOOLEAN] :use_income_requests Feature flag specifying if IncomeRequests should be enabled for this user.
  # @option opts [BOOLEAN] :use_tax_savings Feature flag specifying if tax savings should be enabled.
  # @option opts [BOOLEAN] :is_auto_cashout_enabled Whether or not all income should be immediately cashed out for this user.
  # @option opts [String] :password 
  # @option opts [String] :personal_information 
  # @return [UserSerializer]
  describe 'my_user_partial_update test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for my_user_retrieve
  # The currently logged in User
  # The currently logged in User.
  # @param [Hash] opts the optional parameters
  # @return [UserSerializer]
  describe 'my_user_retrieve test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for my_user_update
  # The currently logged in User
  # The currently logged in User.
  # @param email 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :first_name First name, if the user is an individual. Leave blank if this user is a company.
  # @option opts [String] :last_name Last name, if the user is an individual. Leave blank if this user is a company.
  # @option opts [String] :business_name Business name. Only use this field if this user is a business entity.
  # @option opts [String] :contractor_type 
  # @option opts [String] :default_account Default account to use for payment of unpaid income.
  # @option opts [String] :tax_savings_account Account to use for tax savings.
  # @option opts [String] :tax_savings_percent The percent of income to be withheld for tax savings purposes.
  # @option opts [BOOLEAN] :use_plaid Feature flag specifying if Plaid integration should be used.
  # @option opts [BOOLEAN] :use_income_requests Feature flag specifying if IncomeRequests should be enabled for this user.
  # @option opts [BOOLEAN] :use_tax_savings Feature flag specifying if tax savings should be enabled.
  # @option opts [BOOLEAN] :is_auto_cashout_enabled Whether or not all income should be immediately cashed out for this user.
  # @option opts [String] :password 
  # @option opts [String] :personal_information 
  # @return [UserSerializer]
  describe 'my_user_update test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for plaid_accounts_post
  # Authenticate with Plaid Auth and list the user&#39;s accounts
  # Fetch the user&#39;s accounts from the Plaid Auth service.  &lt;br/&gt;Authenticate with Plaid Auth and list the user&#39;s accounts.&lt;br/&gt;Use the provided public_token from Plaid Link to authenticate. The accounts are reformatted to the Qwil account format, so that they are usable to create Qwil accounts.
  # @param user_pk 
  # @param public_token A public_token generated by authenticating with Plaid Link.
  # @param [Hash] opts the optional parameters
  # @return [PlaidPublicTokenSerializer]
  describe 'plaid_accounts_post test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for receivables_user_api_get
  # The list of all Receivables for a specific User
  # The list of all Receivables for a specific User.&lt;br/&gt;Receivables include Income items and Cashouts.&lt;br/&gt;This API endpoint returns multiple model types; the Model.type field specifies what type a given model is.&lt;br/&gt;Note that currently this means that there are few common fields between different types of Receivable.
  # @param user_pk 
  # @param [Hash] opts the optional parameters
  # @return [ReceivablesSerializer]
  describe 'receivables_user_api_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for tax_savings_partial_update
  # View for handling access to tax savings info for a User
  # View for handling access to tax savings info for a User.
  # @param user_pk 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :tax_savings_percent The percent of income to be withheld for tax savings purposes.
  # @return [TaxSavingsSerializer]
  describe 'tax_savings_partial_update test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for tax_savings_retrieve
  # View for handling access to tax savings info for a User
  # View for handling access to tax savings info for a User.
  # @param user_pk 
  # @param [Hash] opts the optional parameters
  # @return [TaxSavingsSerializer]
  describe 'tax_savings_retrieve test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for tax_savings_update
  # View for handling access to tax savings info for a User
  # View for handling access to tax savings info for a User.
  # @param user_pk 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :tax_savings_percent The percent of income to be withheld for tax savings purposes.
  # @return [TaxSavingsSerializer]
  describe 'tax_savings_update test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for user_create
  # The list of registered Qwil Users
  # The list of registered Qwil Users.
  # @param email 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :first_name First name, if the user is an individual. Leave blank if this user is a company.
  # @option opts [String] :last_name Last name, if the user is an individual. Leave blank if this user is a company.
  # @option opts [String] :business_name Business name. Only use this field if this user is a business entity.
  # @option opts [String] :contractor_type 
  # @option opts [String] :default_account Default account to use for payment of unpaid income.
  # @option opts [String] :tax_savings_account Account to use for tax savings.
  # @option opts [String] :tax_savings_percent The percent of income to be withheld for tax savings purposes.
  # @option opts [BOOLEAN] :use_plaid Feature flag specifying if Plaid integration should be used.
  # @option opts [BOOLEAN] :use_income_requests Feature flag specifying if IncomeRequests should be enabled for this user.
  # @option opts [BOOLEAN] :use_tax_savings Feature flag specifying if tax savings should be enabled.
  # @option opts [BOOLEAN] :is_auto_cashout_enabled Whether or not all income should be immediately cashed out for this user.
  # @option opts [String] :password 
  # @option opts [String] :personal_information 
  # @return [UserSerializer]
  describe 'user_create test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for user_income_request_create
  # 
  # 
  # @param user_pk 
  # @param amount The dollar value of income requested by the User
  # @param platform The platform that the User is requesting Income from.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :note Text visible to the Platform and User describing the Income Request
  # @return [UserIncomeRequestSerializer]
  describe 'user_income_request_create test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for user_income_request_list
  # 
  # 
  # @param user_pk 
  # @param [Hash] opts the optional parameters
  # @return [Array<UserIncomeRequestSerializer>]
  describe 'user_income_request_list test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for user_income_request_retrieve
  # 
  # 
  # @param user_pk 
  # @param pk 
  # @param [Hash] opts the optional parameters
  # @return [UserIncomeRequestSerializer]
  describe 'user_income_request_retrieve test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for user_list
  # The list of registered Qwil Users
  # The list of registered Qwil Users.
  # @param [Hash] opts the optional parameters
  # @return [Array<ContractorSerializer>]
  describe 'user_list test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for user_partial_update
  # The list of registered Qwil Users
  # The list of registered Qwil Users.
  # @param pk 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :email 
  # @option opts [String] :first_name First name, if the user is an individual. Leave blank if this user is a company.
  # @option opts [String] :last_name Last name, if the user is an individual. Leave blank if this user is a company.
  # @option opts [String] :business_name Business name. Only use this field if this user is a business entity.
  # @option opts [String] :contractor_type 
  # @option opts [String] :personal_information 
  # @option opts [String] :default_account Default account to use for payment of unpaid income.
  # @return [ContractorSerializer]
  describe 'user_partial_update test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for user_platform_membership_request_create
  # 
  # 
  # @param user_pk 
  # @param platform The platform that the User requests to join.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :decision_maker 
  # @return [UserPlatformMembershipRequestSerializer]
  describe 'user_platform_membership_request_create test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for user_platform_membership_request_list
  # 
  # 
  # @param user_pk 
  # @param [Hash] opts the optional parameters
  # @return [Array<UserPlatformMembershipRequestSerializer>]
  describe 'user_platform_membership_request_list test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for user_platform_membership_request_retrieve
  # 
  # 
  # @param user_pk 
  # @param pk 
  # @param [Hash] opts the optional parameters
  # @return [UserPlatformMembershipRequestSerializer]
  describe 'user_platform_membership_request_retrieve test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for user_retrieve
  # The list of registered Qwil Users
  # The list of registered Qwil Users.
  # @param pk 
  # @param [Hash] opts the optional parameters
  # @return [ContractorSerializer]
  describe 'user_retrieve test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for user_update
  # The list of registered Qwil Users
  # The list of registered Qwil Users.
  # @param pk 
  # @param email 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :first_name First name, if the user is an individual. Leave blank if this user is a company.
  # @option opts [String] :last_name Last name, if the user is an individual. Leave blank if this user is a company.
  # @option opts [String] :business_name Business name. Only use this field if this user is a business entity.
  # @option opts [String] :contractor_type 
  # @option opts [String] :personal_information 
  # @option opts [String] :default_account Default account to use for payment of unpaid income.
  # @return [ContractorSerializer]
  describe 'user_update test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for xero_account_get
  # 
  # 
  # @param user_pk 
  # @param [Hash] opts the optional parameters
  # @return [Object]
  describe 'xero_account_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for xero_account_put
  # 
  # 
  # @param user_pk 
  # @param [Hash] opts the optional parameters
  # @return [Object]
  describe 'xero_account_put test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for xero_auth_callback_get
  # 
  # 
  # @param user_pk 
  # @param [Hash] opts the optional parameters
  # @return [Object]
  describe 'xero_auth_callback_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for xero_auth_url_get
  # 
  # 
  # @param user_pk 
  # @param [Hash] opts the optional parameters
  # @return [Object]
  describe 'xero_auth_url_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end