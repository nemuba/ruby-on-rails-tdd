require 'rails_helper'

RSpec.describe Order, type: :model do
  it '# Customer default - create an order' do
    customer_default = create(:customer_default)
    order = create(:order, customer: customer_default)
    expect(order.customer).to be_kind_of(Customer)
  end

  it '# Customer vip - create three orders' do
    customer_default = create(:customer_default)
    orders = create_list(:order, 3, customer: customer_default)
    expect(orders.count).to eq(3)
    expect(customer_default.orders.count).to eq(3)
  end

  it 'travel_to' do
    travel_to Time.zone.local(2004, 11, 24, 01, 02, 20) do
      @order = create(:order)
    end
    puts @order.created_at
    expect(@order.created_at).to be < Time.now
  end
end
