class Review < ActiveRecord::Base
  belongs_to :restaurant
  validates :restaurant_id, presence: true
  validates :content, presence: true
  validates :rating, inclusion: { in: 0..5 }
end
