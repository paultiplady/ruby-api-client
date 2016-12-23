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

# Unit tests for QwilAPI::IncomeApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'IncomeApi' do
  before do
    # run before each test
    @instance = QwilAPI::IncomeApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of IncomeApi' do
    it 'should create an instact of IncomeApi' do
      expect(@instance).to be_instance_of(QwilAPI::IncomeApi)
    end
  end

  # unit tests for income_list
  # The list of Income items for all Users
  # The list of Income items for all Users.&lt;br/&gt;This can be filtered by date using the start_date and end_date query parameters.
  # @param [Hash] opts the optional parameters
  # @return [Array<IncomeSerializer>]
  describe 'income_list test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for income_retrieve
  # The list of Income items for all Users
  # The list of Income items for all Users.&lt;br/&gt;This can be filtered by date using the start_date and end_date query parameters.
  # @param pk 
  # @param [Hash] opts the optional parameters
  # @return [IncomeSerializer]
  describe 'income_retrieve test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
