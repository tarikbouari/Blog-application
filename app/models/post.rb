class Post < ApplicationRecord
  belongs_to :users
  has_many :likes
  has_many :comments

  after_save :update_post_counter

  private

  def update_post_counter
    posts.increment!(:posts_counter)
  end

  def rencent_comments
    comments.order(created_at: :desc).limit(5)
  end
end
