# mundi_api
#
# This file was automatically generated by APIMATIC v2.0 (
# https://apimatic.io ).

module MundiApi
  # SubMerchant
  class CreateSubMerchantRequest < BaseModel
    # Payment Facilitator Code
    # @return [String]
    attr_accessor :payment_facilitator_code

    # Code
    # @return [String]
    attr_accessor :code

    # Name
    # @return [String]
    attr_accessor :name

    # Merchant Category Code
    # @return [String]
    attr_accessor :merchant_category_code

    # Document number. Only numbers, no special characters.
    # @return [String]
    attr_accessor :document

    # Document type. Can be either 'individual' or 'company'
    # @return [String]
    attr_accessor :type

    # Phone
    # @return [CreatePhoneRequest]
    attr_accessor :phone

    # Address
    # @return [CreateAddressRequest]
    attr_accessor :address

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['payment_facilitator_code'] = 'payment_facilitator_code'
      @_hash['code'] = 'code'
      @_hash['name'] = 'name'
      @_hash['merchant_category_code'] = 'merchant_category_code'
      @_hash['document'] = 'document'
      @_hash['type'] = 'type'
      @_hash['phone'] = 'phone'
      @_hash['address'] = 'address'
      @_hash
    end

    def initialize(payment_facilitator_code = nil,
                   code = nil,
                   name = nil,
                   merchant_category_code = nil,
                   document = nil,
                   type = nil,
                   phone = nil,
                   address = nil)
      @payment_facilitator_code = payment_facilitator_code
      @code = code
      @name = name
      @merchant_category_code = merchant_category_code
      @document = document
      @type = type
      @phone = phone
      @address = address
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      payment_facilitator_code = hash['payment_facilitator_code']
      code = hash['code']
      name = hash['name']
      merchant_category_code = hash['merchant_category_code']
      document = hash['document']
      type = hash['type']
      phone = CreatePhoneRequest.from_hash(hash['phone']) if hash['phone']
      address = CreateAddressRequest.from_hash(hash['address']) if
        hash['address']

      # Create object from extracted values.
      CreateSubMerchantRequest.new(payment_facilitator_code,
                                   code,
                                   name,
                                   merchant_category_code,
                                   document,
                                   type,
                                   phone,
                                   address)
    end
  end
end
