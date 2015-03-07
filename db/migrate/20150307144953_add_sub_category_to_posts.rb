class AddSubCategoryToPosts < ActiveRecord::Migration
  def change
    add_reference :posts, :sub_category, index: true
    add_foreign_key :posts, :sub_categories
  end
end
