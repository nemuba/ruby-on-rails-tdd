require 'rails_helper'

RSpec.describe Customer, type: :model do
  it '#full_name' do
    alef = create(:customer)
    expect(alef.full_name).to start_with('Sr. ')
  end

  it '#factory customer_vip' do
    alef = create(:customer_vip)
    expect(alef.vip).to eq(true)
  end

  it '#attributes_for' do
    attrs = attributes_for(:customer)
    alef = Customer.create(attrs)
    expect(alef.full_name).to start_with('Sr. ')
  end

  it '#factory customer_default' do
    alef = create(:customer_default)
    expect(alef.vip).to eq(false)
  end

  it '#factory customer_default with transient' do
    alef = create(:customer_default, upcased: true)
    expect(alef.name.upcase).to eq(alef.name)
  end

  it '#factory customer_male_vip' do
    alef = create(:customer_male_vip)
    puts alef.email
    expect(alef.gender).to eq('M')
    expect(alef.vip).to eq(true)
  end

  it '#factory customer_male_default' do
    alef = create(:customer_male_default)
    expect(alef.gender).to eq('M')
    expect(alef.vip).to eq(false)
  end

  it 'Create customer with five orders' do
    customer = create(:customer_with_orders, qtt_orders: 5)
    expect(customer.orders.count).to eq(5)
  end

  it { expect { create(:customer) }.to change { Customer.all.count }.by(1) }
end
