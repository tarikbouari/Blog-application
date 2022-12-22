class Like < ApplicationRecord
  belongs_to :user, class_name: 'User'
  belongs_to :post

  after_save :update_likes_post

  private

  def update_likes_post
    post.increment!(:likes_counter)
  end
end
