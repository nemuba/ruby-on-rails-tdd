require 'rails_helper'

RSpec.describe Order, type: :model do
  it '# Customer default - create an order' do
    customer_default = create(:customer_default)
    order = create(:order, customer: customer_default)
    expect(order.customer).to be_kind_of(Customer)
  end
end
