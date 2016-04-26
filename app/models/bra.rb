class Bra < ActiveRecord::Base
  has_many :bra_sizes, dependent: :destroy
end
