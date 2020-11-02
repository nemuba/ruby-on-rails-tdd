require 'rails_helper'

RSpec.describe 'Customers', type: :request do
  it 'response success' do
    get customers_path
    expect(response).to have_http_status(200)
  end
end
