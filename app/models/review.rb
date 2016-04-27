class Review < ActiveRecord::Base
  belongs_to :bra
  belongs_to :user
end
