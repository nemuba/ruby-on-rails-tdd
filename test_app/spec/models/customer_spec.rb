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

  it { expect { create(:customer) }.to change { Customer.all.count }.by(1) }
end
