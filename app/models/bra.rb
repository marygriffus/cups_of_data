class Bra < ActiveRecord::Base
  has_many :bra_sizes, dependent: :destroy
  has_many :reviews, dependent: :destroy
end
