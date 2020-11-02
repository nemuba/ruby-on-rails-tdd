require 'rails_helper'

RSpec.describe Post, type: :model do
  it 'is valid with title and description' do
    post = build(:post)
    post.valid?
    expect(post).to be_valid
  end

  it 'is invalid without title' do
    post = build(:post, title: nil)
    post.valid?
    expect(post.errors.full_messages).to include("Title can't be blank")
  end

  it 'is invalid without description' do
    post = build(:post, description: nil)
    post.valid?
    expect(post.errors.full_messages).to include("Description can't be blank")
  end

  it { expect { create(:post) }.to change { Post.count }.by(1) }
end
