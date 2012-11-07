module CXML
  class Status
    attr_accessor :code
    attr_accessor :text
    attr_accessor :xml_lang

    def initialize(data={})
      if data.kind_of?(String)
        data = CXML.parse(data)
      end

      if data.kind_of?(Hash) && !data.empty?
        @code     = data['code'].to_i
        @text     = data['text']
        @xml_lang = data['xml:lang']
      end
    end

    def success?
      [200, 201, 204, 280, 281].include?(code)
    end
  end
end