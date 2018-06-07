class Review < ApplicationRecord
  belongs_to :profile
  after_create :set_zero
  
  
  def set_zero
    if self.rating.nil?
      self.update(rating: 0)
    end
  end
end
