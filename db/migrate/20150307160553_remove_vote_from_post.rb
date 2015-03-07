class RemoveVoteFromPost < ActiveRecord::Migration
  def change
    remove_reference :posts, :vote, index: true
    remove_foreign_key :posts, :votes
  end
end
