class Restaurant < ActiveRecord::Base
  has_many :reviews
  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :name, presence: true
  validates :address, presence: true
  validates :category, inclusion: { in: CATEGORIES }, presence: true

  def destroy
    self.reviews.each do |review|
      review.destroy
    end
    super
  end

end
