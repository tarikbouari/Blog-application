class Comment < ApplicationRecord
  belongs_to :users
  belongs_to :posts

  def comments_counter
    comments.increment!(:comments_counter)
  end
end
