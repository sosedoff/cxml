module CXML
  class Document
    attr_accessor :version
    attr_accessor :payload_id
    attr_accessor :timestamp

    def parse(hash)
      @version    = hash['version']
      @payload_id = hash['payloadID']
      @timestamp  = Time.parse(hash['timestamp'])
    end
  end
end