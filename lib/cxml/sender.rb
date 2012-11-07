module CXML
  class Sender
    attr_accessor :credential
    attr_accessor :user_agent

    def initialize(data={})
      if data.kind_of?(Hash) && !data.empty?
        @credential = CXML::Credential.new(data['Credential'])
        @user_agent = data['UserAgent']
      end
    end
  end
end