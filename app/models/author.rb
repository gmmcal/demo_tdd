class Author < ActiveRecord::Base
  has_many :posts

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :image_url, presence: true
end
