class BraSize < ActiveRecord::Base
  belongs_to :bra, dependent: :destroy
end
