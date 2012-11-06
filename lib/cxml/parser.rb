require 'nokogiri'
require 'xmlsimple'

module CXML
  class Parser
    def parse(data)
      XmlSimple.xml_in(data, {'ForceArray' => false})
    end
  end
end