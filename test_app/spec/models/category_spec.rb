require 'rails_helper'

RSpec.describe Category, type: :model do
  it 'is valid with description' do
    category = create(:category)
    expect(category).to be_valid 
  end

  it 'is invalid without description' do
    category = build(:category, description: nil)
    category.valid?
    expect(category.errors.full_messages.first).to eq("Description can't be blank")
  end
end
