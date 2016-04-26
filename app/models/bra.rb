class Bra < ActiveRecord::Base
  has_many :bra_sizes, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :tags
  has_many :categories, through: :tags

  def all_tags=(raw_tags)
    split_tags = raw_tags.split(", ")
    self.categories = self.categories + split_tags.map { |tag_name| Category.where(name: tag_name.strip).first_or_create! }
  end

end
