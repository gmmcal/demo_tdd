class Post < ActiveRecord::Base
  belongs_to :writer

  validates :name, presence: true
  validates :description, presence: true
end
