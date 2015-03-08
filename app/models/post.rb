class Post < ActiveRecord::Base
  belongs_to :category
  belongs_to :sub_category
  has_many :votes

  def upvotes
    votes.select(&:helpful).length
  end

  def downvotes
    votes.reject(&:helpful).length
  end

  InitialTime = "2015-01-10 00:00:00 -0700".to_time

  def popularity
    x = upvotes-downvotes
    if x < 0
      y = -1
      z = 1
    elsif x == 0
      y = 0
      z = x 
    else
      y = 1
      z = x
    end
    t = (created_at - InitialTime)
    Math.log(z.to_f) + (y.to_f*t) / 45000
  end

end
