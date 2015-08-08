class Writer < ActiveRecord::Base
  validates :name, presence: true
end
