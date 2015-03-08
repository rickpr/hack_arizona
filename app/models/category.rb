class Category < ActiveRecord::Base
  has_many :sub_categories
  has_many :posts, dependent: :destroy
  include RankedModel
  ranks :row_order
end
