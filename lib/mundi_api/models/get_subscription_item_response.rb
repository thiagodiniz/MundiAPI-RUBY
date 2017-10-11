# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module MundiApi
  # GetSubscriptionItemResponse Model.
  class GetSubscriptionItemResponse < BaseModel
    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :description

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :status

    # TODO: Write general description for this method
    # @return [DateTime]
    attr_accessor :created_at

    # TODO: Write general description for this method
    # @return [DateTime]
    attr_accessor :updated_at

    # TODO: Write general description for this method
    # @return [GetPricingSchemeResponse]
    attr_accessor :pricing_scheme

    # TODO: Write general description for this method
    # @return [List of GetDiscountResponse]
    attr_accessor :discounts

    # TODO: Write general description for this method
    # @return [GetSubscriptionResponse]
    attr_accessor :subscription

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :quantity

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :cycles

    # TODO: Write general description for this method
    # @return [DateTime]
    attr_accessor :deleted_at

    # A mapping from model property names to API property names.
    def self.names
      if @_hash.nil?
        @_hash = {}
        @_hash['id'] = 'id'
        @_hash['description'] = 'description'
        @_hash['status'] = 'status'
        @_hash['created_at'] = 'created_at'
        @_hash['updated_at'] = 'updated_at'
        @_hash['pricing_scheme'] = 'pricing_scheme'
        @_hash['discounts'] = 'discounts'
        @_hash['subscription'] = 'subscription'
        @_hash['quantity'] = 'quantity'
        @_hash['cycles'] = 'cycles'
        @_hash['deleted_at'] = 'deleted_at'
      end
      @_hash
    end

    def initialize(id = nil,
                   description = nil,
                   status = nil,
                   created_at = nil,
                   updated_at = nil,
                   pricing_scheme = nil,
                   discounts = nil,
                   subscription = nil,
                   quantity = nil,
                   cycles = nil,
                   deleted_at = nil)
      @id = id
      @description = description
      @status = status
      @created_at = created_at
      @updated_at = updated_at
      @pricing_scheme = pricing_scheme
      @discounts = discounts
      @subscription = subscription
      @quantity = quantity
      @cycles = cycles
      @deleted_at = deleted_at
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash['id']
      description = hash['description']
      status = hash['status']
      created_at = DateTime.rfc3339(hash['created_at']) if hash['created_at']
      updated_at = DateTime.rfc3339(hash['updated_at']) if hash['updated_at']
      pricing_scheme = GetPricingSchemeResponse.from_hash(hash['pricing_scheme']) if
        hash['pricing_scheme']
      # Parameter is an array, so we need to iterate through it
      discounts = nil
      unless hash['discounts'].nil?
        discounts = []
        hash['discounts'].each do |structure|
          discounts << (GetDiscountResponse.from_hash(structure) if structure)
        end
      end
      subscription = GetSubscriptionResponse.from_hash(hash['subscription']) if
        hash['subscription']
      quantity = hash['quantity']
      cycles = hash['cycles']
      deleted_at = DateTime.rfc3339(hash['deleted_at']) if hash['deleted_at']

      # Create object from extracted values.
      GetSubscriptionItemResponse.new(id,
                                      description,
                                      status,
                                      created_at,
                                      updated_at,
                                      pricing_scheme,
                                      discounts,
                                      subscription,
                                      quantity,
                                      cycles,
                                      deleted_at)
    end
  end
end
