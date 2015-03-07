class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.references :post, index: true
      t.references :user, index: true
      t.boolean :helpful

      t.timestamps null: false
    end
    add_foreign_key :votes, :posts
    add_foreign_key :votes, :users
  end
end
