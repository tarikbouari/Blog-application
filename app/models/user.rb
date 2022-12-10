class User < ApplicationRecord
  validates :name, presence: true
  validates :posts_counter, comparison: { greater_than_or_equal_to: 0 }, numericality: { only_integer: true }

  has_many :posts
  has_many :likes
  has_many :comments

  private

  def most_recent_post
    post.order(created_at: :desc).limit(3)
  end
end
