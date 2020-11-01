require 'rails_helper'

RSpec.describe Customer, type: :model do
  it 'Create Customer' do
    alef = create(:customer)
    expect(alef.full_name).to eq('Sr. Alef Ojeda de Oliveira')
  end
end
