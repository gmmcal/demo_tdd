require 'rails_helper'

RSpec.describe Category, type: :model do
  it { expect(subject).to validate_presence_of(:name) }
  it { expect(subject).to validate_presence_of(:description) }
  it { expect(subject).to have_and_belong_to_many(:posts) }

  it 'has a valid factory' do
    expect(build(:category)).to be_valid
  end

  context 'is invalid' do
    it 'without a name' do
      category = build(:category, name: nil)
      category.valid?
      expect(category.errors[:name]).to include("can't be blank")
    end
    it 'without a description' do
      category = build(:category, description: nil)
      category.valid?
      expect(category.errors[:description]).to include("can't be blank")
    end
  end

  context 'is valid' do
  end
end
