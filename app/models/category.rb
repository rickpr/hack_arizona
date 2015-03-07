class Category < ActiveRecord::Base
  has_many :sub_categories
  include RankedModel
  ranks :row_order
end
