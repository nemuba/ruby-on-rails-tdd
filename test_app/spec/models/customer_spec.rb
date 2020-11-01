require 'rails_helper'

RSpec.describe Customer, type: :model do
  fixtures :customers

  it 'Create Customer' do
    customer = customers(:alef)
    expect(customer.full_name).to eq('Sr. Alef Ojeda de Oliveira')
  end
end
