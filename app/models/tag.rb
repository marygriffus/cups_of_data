class Tag < ActiveRecord::Base
  belongs_to :bra
  belongs_to :category
end
