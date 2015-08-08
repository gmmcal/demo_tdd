class Post < ActiveRecord::Base
  belongs_to :author
  has_and_belongs_to_many :categories

  validates :name, presence: true
  validates :content, presence: true
end
