class AddVoteToPosts < ActiveRecord::Migration
  def change
    add_reference :posts, :vote, index: true
    add_foreign_key :posts, :votes
  end
end
