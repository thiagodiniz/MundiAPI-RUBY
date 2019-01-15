# mundi_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MundiApi
  # RecipientsController
  class RecipientsController < BaseController
    @instance = RecipientsController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # Updates recipient metadata
    # @param [String] recipient_id Required parameter: Recipient id
    # @param [UpdateMetadataRequest] request Required parameter: Metadata
    # @return GetRecipientResponse response from the API call
    def update_recipient_metadata(recipient_id,
                                  request)
      # Prepare query url.
      _path_url = '/recipients/{recipient_id}/metadata'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'recipient_id' => recipient_id
      )
      _query_builder = Configuration.base_uri.dup
      _query_builder << _path_url
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json',
        'content-type' => 'application/json; charset=utf-8'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.patch(
        _query_url,
        headers: _headers,
        parameters: request.to_json
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      GetRecipientResponse.from_hash(decoded)
    end

    # Gets a transfer
    # @param [String] recipient_id Required parameter: Recipient id
    # @param [String] transfer_id Required parameter: Transfer id
    # @return GetTransferResponse response from the API call
    def get_transfer(recipient_id,
                     transfer_id)
      # Prepare query url.
      _path_url = '/recipients/{recipient_id}/transfers/{transfer_id}'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'recipient_id' => recipient_id,
        'transfer_id' => transfer_id
      )
      _query_builder = Configuration.base_uri.dup
      _query_builder << _path_url
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.get(
        _query_url,
        headers: _headers
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      GetTransferResponse.from_hash(decoded)
    end

    # Gets a paginated list of transfers for the recipient
    # @param [String] recipient_id Required parameter: Recipient id
    # @param [Integer] page Optional parameter: Page number
    # @param [Integer] size Optional parameter: Page size
    # @param [String] status Optional parameter: Filter for transfer status
    # @param [DateTime] created_since Optional parameter: Filter for start range
    # of transfer creation date
    # @param [DateTime] created_until Optional parameter: Filter for end range
    # of transfer creation date
    # @return ListTransferResponse response from the API call
    def get_transfers(recipient_id,
                      page = nil,
                      size = nil,
                      status = nil,
                      created_since = nil,
                      created_until = nil)
      # Prepare query url.
      _path_url = '/recipients/{recipient_id}/transfers'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'recipient_id' => recipient_id
      )
      _query_builder = Configuration.base_uri.dup
      _query_builder << _path_url
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        {
          'page' => page,
          'size' => size,
          'status' => status,
          'created_since' => created_since,
          'created_until' => created_until
        },
        array_serialization: Configuration.array_serialization
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.get(
        _query_url,
        headers: _headers
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      ListTransferResponse.from_hash(decoded)
    end

    # Creates an anticipation
    # @param [String] recipient_id Required parameter: Recipient id
    # @param [CreateAnticipationRequest] request Required parameter:
    # Anticipation data
    # @return GetAnticipationResponse response from the API call
    def create_anticipation(recipient_id,
                            request)
      # Prepare query url.
      _path_url = '/recipients/{recipient_id}/anticipations'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'recipient_id' => recipient_id
      )
      _query_builder = Configuration.base_uri.dup
      _query_builder << _path_url
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json',
        'content-type' => 'application/json; charset=utf-8'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        headers: _headers,
        parameters: request.to_json
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      GetAnticipationResponse.from_hash(decoded)
    end

    # Gets an anticipation
    # @param [String] recipient_id Required parameter: Recipient id
    # @param [String] anticipation_id Required parameter: Anticipation id
    # @return GetAnticipationResponse response from the API call
    def get_anticipation(recipient_id,
                         anticipation_id)
      # Prepare query url.
      _path_url = '/recipients/{recipient_id}/anticipations/{anticipation_id}'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'recipient_id' => recipient_id,
        'anticipation_id' => anticipation_id
      )
      _query_builder = Configuration.base_uri.dup
      _query_builder << _path_url
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.get(
        _query_url,
        headers: _headers
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      GetAnticipationResponse.from_hash(decoded)
    end

    # Gets the anticipation limits for a recipient
    # @param [String] recipient_id Required parameter: Recipient id
    # @param [String] timeframe Required parameter: Timeframe
    # @param [DateTime] payment_date Required parameter: Anticipation payment
    # date
    # @return GetAnticipationLimitResponse response from the API call
    def get_anticipation_limits(recipient_id,
                                timeframe,
                                payment_date)
      # Prepare query url.
      _path_url = '/recipients/{recipient_id}/anticipation_limits'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'recipient_id' => recipient_id
      )
      _query_builder = Configuration.base_uri.dup
      _query_builder << _path_url
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        {
          'timeframe' => timeframe,
          'payment_date' => payment_date
        },
        array_serialization: Configuration.array_serialization
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.get(
        _query_url,
        headers: _headers
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      GetAnticipationLimitResponse.from_hash(decoded)
    end

    # Retrieves a paginated list of anticipations from a recipient
    # @param [String] recipient_id Required parameter: Recipient id
    # @param [Integer] page Optional parameter: Page number
    # @param [Integer] size Optional parameter: Page size
    # @param [String] status Optional parameter: Filter for anticipation
    # status
    # @param [String] timeframe Optional parameter: Filter for anticipation
    # timeframe
    # @param [DateTime] payment_date_since Optional parameter: Filter for start
    # range for anticipation payment date
    # @param [DateTime] payment_date_until Optional parameter: Filter for end
    # range for anticipation payment date
    # @param [DateTime] created_since Optional parameter: Filter for start range
    # for anticipation creation date
    # @param [DateTime] created_until Optional parameter: Filter for end range
    # for anticipation creation date
    # @return ListAnticipationResponse response from the API call
    def get_anticipations(recipient_id,
                          page = nil,
                          size = nil,
                          status = nil,
                          timeframe = nil,
                          payment_date_since = nil,
                          payment_date_until = nil,
                          created_since = nil,
                          created_until = nil)
      # Prepare query url.
      _path_url = '/recipients/{recipient_id}/anticipations'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'recipient_id' => recipient_id
      )
      _query_builder = Configuration.base_uri.dup
      _query_builder << _path_url
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        {
          'page' => page,
          'size' => size,
          'status' => status,
          'timeframe' => timeframe,
          'payment_date_since' => payment_date_since,
          'payment_date_until' => payment_date_until,
          'created_since' => created_since,
          'created_until' => created_until
        },
        array_serialization: Configuration.array_serialization
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.get(
        _query_url,
        headers: _headers
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      ListAnticipationResponse.from_hash(decoded)
    end

    # Updates a recipient
    # @param [String] recipient_id Required parameter: Recipient id
    # @param [UpdateRecipientRequest] request Required parameter: Recipient
    # data
    # @return GetRecipientResponse response from the API call
    def update_recipient(recipient_id,
                         request)
      # Prepare query url.
      _path_url = '/recipients/{recipient_id}'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'recipient_id' => recipient_id
      )
      _query_builder = Configuration.base_uri.dup
      _query_builder << _path_url
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json',
        'content-type' => 'application/json; charset=utf-8'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.put(
        _query_url,
        headers: _headers,
        parameters: request.to_json
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      GetRecipientResponse.from_hash(decoded)
    end

    # Updates the default bank account from a recipient
    # @param [String] recipient_id Required parameter: Recipient id
    # @param [UpdateRecipientBankAccountRequest] request Required parameter:
    # Bank account data
    # @return GetRecipientResponse response from the API call
    def update_recipient_default_bank_account(recipient_id,
                                              request)
      # Prepare query url.
      _path_url = '/recipients/{recipient_id}/default-bank-account'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'recipient_id' => recipient_id
      )
      _query_builder = Configuration.base_uri.dup
      _query_builder << _path_url
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json',
        'content-type' => 'application/json; charset=utf-8'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.patch(
        _query_url,
        headers: _headers,
        parameters: request.to_json
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      GetRecipientResponse.from_hash(decoded)
    end

    # Retrieves recipient information
    # @param [String] recipient_id Required parameter: Recipiend id
    # @return GetRecipientResponse response from the API call
    def get_recipient(recipient_id)
      # Prepare query url.
      _path_url = '/recipients/{recipient_id}'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'recipient_id' => recipient_id
      )
      _query_builder = Configuration.base_uri.dup
      _query_builder << _path_url
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.get(
        _query_url,
        headers: _headers
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      GetRecipientResponse.from_hash(decoded)
    end

    # Retrieves paginated recipients information
    # @param [Integer] page Optional parameter: Page number
    # @param [Integer] size Optional parameter: Page size
    # @return ListRecipientResponse response from the API call
    def get_recipients(page = nil,
                       size = nil)
      # Prepare query url.
      _path_url = '/recipients'
      _query_builder = Configuration.base_uri.dup
      _query_builder << _path_url
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        {
          'page' => page,
          'size' => size
        },
        array_serialization: Configuration.array_serialization
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.get(
        _query_url,
        headers: _headers
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      ListRecipientResponse.from_hash(decoded)
    end

    # Get balance information for a recipient
    # @param [String] recipient_id Required parameter: Recipient id
    # @return GetBalanceResponse response from the API call
    def get_balance(recipient_id)
      # Prepare query url.
      _path_url = '/recipients/{recipient_id}/balance'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'recipient_id' => recipient_id
      )
      _query_builder = Configuration.base_uri.dup
      _query_builder << _path_url
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.get(
        _query_url,
        headers: _headers
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      GetBalanceResponse.from_hash(decoded)
    end

    # Creates a transfer for a recipient
    # @param [String] recipient_id Required parameter: Recipient Id
    # @param [CreateTransferRequest] request Required parameter: Transfer data
    # @return GetTransferResponse response from the API call
    def create_transfer(recipient_id,
                        request)
      # Prepare query url.
      _path_url = '/recipients/{recipient_id}/transfers'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'recipient_id' => recipient_id
      )
      _query_builder = Configuration.base_uri.dup
      _query_builder << _path_url
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json',
        'content-type' => 'application/json; charset=utf-8'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        headers: _headers,
        parameters: request.to_json
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      GetTransferResponse.from_hash(decoded)
    end

    # Creates a new recipient
    # @param [CreateRecipientRequest] request Required parameter: Recipient
    # data
    # @return GetRecipientResponse response from the API call
    def create_recipient(request)
      # Prepare query url.
      _path_url = '/recipients'
      _query_builder = Configuration.base_uri.dup
      _query_builder << _path_url
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json',
        'content-type' => 'application/json; charset=utf-8'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        headers: _headers,
        parameters: request.to_json
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      GetRecipientResponse.from_hash(decoded)
    end

    # TODO: type endpoint description here
    # @param [String] recipient_id Required parameter: Recipient Identificator
    # @param [UpdateTransferSettingsRequest] request Required parameter:
    # Example:
    # @return GetRecipientResponse response from the API call
    def update_recipient_transfer_settings(recipient_id,
                                           request)
      # Prepare query url.
      _path_url = '/recipients/{recipient_id}/transfer-settings'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'recipient_id' => recipient_id
      )
      _query_builder = Configuration.base_uri.dup
      _query_builder << _path_url
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json',
        'content-type' => 'application/json; charset=utf-8'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.patch(
        _query_url,
        headers: _headers,
        parameters: request.to_json
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      GetRecipientResponse.from_hash(decoded)
    end
  end
end
