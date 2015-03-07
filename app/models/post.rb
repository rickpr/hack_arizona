class Post < ActiveRecord::Base
  belongs_to :category
  has_many :votes

  def upvotes
    votes.select(&:helpful).length
  end

  def downvotes
    votes.reject(&:helpful).length
  end

end
