class Post < ActiveRecord::Base
  belongs_to :writer
  has_and_belongs_to_many :categories

  validates :name, presence: true
  validates :description, presence: true
end
