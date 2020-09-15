class BraSize < ActiveRecord::Base
  belongs_to :bra
  belongs_to :user
  # nice use of inclusion!
  validates :rating_aesthetic, :rating_comfort, :rating_quality, inclusion: { in: [1, 2, 3, 4, 5] }
end
