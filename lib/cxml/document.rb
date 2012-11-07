module CXML
  class Document
    attr_accessor :version
    attr_accessor :payload_id
    attr_accessor :timestamp

    attr_accessor :header
    attr_accessor :request
    attr_accessor :response

    def initialize(data={})
      if data.kind_of?(Hash) && !data.empty?
        @version = data['version']
        @payload_id = data['payloadID']

        if data['timestamp']
          @timestamp = Time.parse(data['timestamp'])
        end

        if data['Header']
          @header = CXML::Header.new(data['Header'])
        end

        if data['Request']
          @request = CXML::Request.new(data['Request'])
        end

        if data['Response']
          @response = CXML::Response.new(data['Response'])
        end
      end
    end
  end
end