require 'rails_helper'

RSpec.describe Writer, type: :model do
  it { expect(subject).to validate_presence_of(:name) }
  it { expect(subject).to have_many(:posts) }

  it 'has a valid factory' do
    expect(build(:writer)).to be_valid
  end

  context 'is invalid' do
    it 'without a name' do
      writer = build(:writer, name: nil)
      writer.valid?
      expect(writer.errors[:name]).to include("can't be blank")
    end
  end

  context 'is valid' do
    it 'without an image_url' do
      writer = build(:writer, image_url: nil)
      expect(writer.valid?).to eq(true)
    end
    it 'without a bio' do
      writer = build(:writer, bio: nil)
      expect(writer.valid?).to eq(true)
    end
  end
end
