class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post

  def comments_counter
    comments.increment!(:comments_counter)
  end
end
