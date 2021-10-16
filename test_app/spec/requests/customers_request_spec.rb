require 'rails_helper'
require 'shared/shared_contexts'

RSpec.describe 'Customer', type: :request do
  include_context 'load global hooks'
  include_context 'load helper methods'

  describe 'as guest member' do
    context 'customer#index' do
      it 'response status 200' do
        get customers_url
        expect(response).to have_http_status(200)
      end
    end

    context 'customer#show' do
      it 'response status 302 inauthorized' do
        customer = create(:customer_vip)
        get customer_path(customer)
        expect(response).to have_http_status(302)
      end
    end
  end

  describe 'as logged member' do
    context 'customer#show' do
      it 'response status 200' do
        customer = create(:customer)
        member = create(:member)

        sign_in member

        get customer_path(customer)
        expect(response).to render_template(:show)
      end
    end
  end
end
