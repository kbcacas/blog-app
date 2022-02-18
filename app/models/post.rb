class Post < ApplicationRecord
  validates :content , presence: true 
  validates_length_of :content, maximum: 100
  belongs_to :user
end
