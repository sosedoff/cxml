# Servers send responses to inform clients of the results of operations. Because the 
# result of some requests might not have any data, the Response element can optionally 
# contain nothing but a Status element. A Response element can also contain any 
# application-level data. During PunchOut for example, the application-level data is 
# contained in a PunchOutSetupResponse element.

module CXML
  class Response
    attr_accessor :id
    attr_accessor :status

    def initialize(data={})
      if data.kind_of?(Hash) && !data.empty?
        @status = CXML::Status.new(data['Status'])
      end
    end

    def render(node)
      options = {:id => @id}
      options.keep_if { |k,v| !v.nil? }
      node.Response(options) { |n| @status.render(n) }
    end
  end
end