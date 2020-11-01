require 'rails_helper'

RSpec.describe Customer, type: :model do
  it '#full_name' do
    alef = create(:customer)
    puts alef.email
    expect(alef.full_name).to start_with('Sr. ')
  end

  it '#factory customer_vip' do
    alef = create(:customer_vip)
    puts alef.email
    expect(alef.vip).to eq(true)
  end

  it '#attributes_for' do
    attrs = attributes_for(:customer)
    alef = Customer.create(attrs)
    puts alef.email
    expect(alef.full_name).to start_with('Sr. ')
  end

  it '#factory customer_default' do
    alef = create(:customer_default)
    puts alef.email
    expect(alef.vip).to eq(false)
  end

  it '#factory customer_default with transient' do
    alef = create(:customer_default, upcased: true)
    puts alef.email
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
    puts alef.email
    expect(alef.gender).to eq('M')
    expect(alef.vip).to eq(false)
  end

  it { expect { create(:customer) }.to change { Customer.all.count }.by(1) }
end
