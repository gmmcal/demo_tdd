require 'rails_helper'

RSpec.describe Post, type: :model do
  it { expect(subject).to validate_presence_of(:name) }
  it { expect(subject).to validate_presence_of(:description) }
  it { expect(subject).to belong_to(:writer) }

  it 'has a valid factory' do
    expect(build(:post)).to be_valid
  end

  context 'is invalid' do
    it 'without a name' do
      post = build(:post, name: nil)
      post.valid?
      expect(post.errors[:name]).to include("can't be blank")
    end
    it 'without a description' do
      post = build(:post, description: nil)
      post.valid?
      expect(post.errors[:description]).to include("can't be blank")
    end
  end

  context 'is valid' do
  end
end
