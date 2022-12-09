class Like < ApplicationRecord
  belongs_to :users
  belongs_to :posts

  after_save :update_likes_post

  private

  def update_likes_post
    posts.increment!(:likes_counter)
  end
end
