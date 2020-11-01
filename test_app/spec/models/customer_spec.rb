require 'rails_helper'

RSpec.describe Customer, type: :model do
  it '#full_name' do
    alef = create(:customer)
    expect(alef.full_name).to start_with('Sr. ')
  end

  it '#full_name' do
    alef = create(:user, name: 'Alef') # ou create(:customer, name: 'Alef')
    expect(alef.full_name).to eq('Sr. Alef')
  end

  it { expect { create(:customer) }.to change { Customer.all.count }.by(1) }
end
