module CXML
  module Protocol
    VERSION = '1.2.011'

    REQUEST_ELEMENTS = [
      'OrderRequest',
      'ProfileRequest',
      'PunchOutSetupRequest',
      'StatusUpdateRequest',
      'GetPendingRequest',
      'ConfirmationRequest',
      'ShipNoticeRequest',
      'ProviderSetupRequest',
      'PaymentRemittanceRequest',
    ]

    RESPONSE_ELEMENTS = [
      'ProfileResponse',
      'PunchOutSetupResponse',
      'GetPendingResponse',
    ]

    STATUS_CODES = [
      200, 201, 204, 280, 281,
      400, 401, 402, 403, 406, 409, 412, 417, 450, 475, 476, 477,
      500, 550, 551, 560
    ]

    class << self
      # Get current protocol version
      # @return [String]
      def version
        VERSION
      end

      # Get available request elements
      # @return [Array<String>]
      def request_elements
        REQUEST_ELEMENTS
      end

      # Get available response elements
      # @return [Array<String>]
      def response_elements
        RESPONSE_ELEMENTS
      end

      # Get available status codes
      # @return [Array<Fixnum>]
      def status_codes
        STATUS_CODES
      end
    end
  end
end