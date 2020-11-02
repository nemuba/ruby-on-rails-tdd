# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Product, type: :model do
  # it 'is valid with description, price and category' do
  #   product = create(:product)
  #   expect(product).to be_valid
  # end

  # it 'is invalid without description' do
  #   product = build(:product, description: nil)
  #   product.valid?
  #   expect(product.errors.full_messages).to include("Description can't be blank")
  # end

  # it 'is invalid without price' do
  #   product = build(:product, price: nil)
  #   product.valid?
  #   expect(product.errors.full_messages).to include("Price can't be blank")
  # end

  # it 'is invalid without category' do
  #   product = build(:product, category: nil)
  #   product.valid?
  #   expect(product.errors.full_messages).to include('Category must exist')
  # end
  
  context 'Validations' do
    it { is_expected.to validate_presence_of(:description) }
    it { is_expected.to validate_presence_of(:price) }
  end

  context 'Associations' do
    it { is_expected.to belong_to(:category) }
  end

  context 'Instance method' do
    it '#valid' do
      product = create(:product)
      expect(product).to be_valid
    end
    
    it '#full_description' do
      product = create(:product)
      expect(product.full_description).to eq("#{product.description} - #{product.price}")
    end
  end
end
