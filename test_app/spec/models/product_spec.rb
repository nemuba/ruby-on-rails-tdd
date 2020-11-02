# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Product, type: :model do
  it 'is valid with description, price and category' do
    product = create(:product)
    expect(product).to be_valid
  end

  it 'is invalid without description' do
    product = build(:product, description: nil)
    product.valid?
    expect(product.errors.full_messages.first).to eq("Description can't be blank")
  end

  it 'is invalid without price' do
    product = build(:product, price: nil)
    product.valid?
    expect(product.errors.full_messages.first).to eq("Price can't be blank")
  end

  it 'is invalid without category' do
    product = build(:product, category: nil)
    product.valid?
    expect(product.errors.full_messages.first).to eq('Category must exist')
  end
end
