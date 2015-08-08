require 'rails_helper'

RSpec.describe Author, type: :model do
  it { expect(subject).to validate_presence_of(:first_name) }
  it { expect(subject).to validate_presence_of(:last_name) }
  it { expect(subject).to validate_presence_of(:image_url) }
  it { expect(subject).to have_many(:posts) }

  it 'has a valid factory' do
    expect(build(:author)).to be_valid
  end

  context 'is invalid' do
    it 'without a first_name' do
      author = build(:author, first_name: nil)
      author.valid?
      expect(author.errors[:first_name]).to include("can't be blank")
    end
    it 'without a last_name' do
      author = build(:author, last_name: nil)
      author.valid?
      expect(author.errors[:last_name]).to include("can't be blank")
    end
    it 'without a image_url' do
      author = build(:author, image_url: nil)
      author.valid?
      expect(author.errors[:image_url]).to include("can't be blank")
    end
  end

  context 'is valid' do
    it 'without a bio' do
      author = build(:author, bio: nil)
      expect(author.valid?).to eq(true)
    end
  end
end
