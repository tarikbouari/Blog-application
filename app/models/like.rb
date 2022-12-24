class Like < ApplicationRecord
  belongs_to :user, class_name: 'User'
  belongs_to :post

  after_save :update_likes_post

  private

  def likes_counter
    post.increment!(:likes_counter)
  end
end
