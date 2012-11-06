require 'spec_helper'

describe CXML::Protocol do
  it { should respond_to :version }
  it { should respond_to :request_elements }
  it { should respond_to :response_elements }
  it { should respond_to :status_codes }

  context '#version' do
    it 'returns current protocol version' do
      subject.version.should eq('1.2.011')
    end
  end
end