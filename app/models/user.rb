class User < ApplicationRecord
  has_many :posts
  has_many :likes
  has_many :comments

  private

  def most_recent_post
    post.order(created_at: :desc).limit(3)
  end
end
