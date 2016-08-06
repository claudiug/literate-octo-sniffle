require_relative 'spec_helper'

describe 'root path' do
  it 'return 200' do
    get '/'
    last_response.status.must_equal 200
  end
end