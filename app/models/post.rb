class Post < ApplicationRecord
  after_save :update_post_counter
  
  validates :title, presence: true, length: { in: 1..250 }
  validates :comments_counter, :likes_counter, comparaison: { greater_than_or_equal_to: 0 }, 
                               numericality: { only_integer: true }

  belongs_to :author, class_name: 'User'
  has_many :likes
  has_many :comments

  private

  def update_post_counter
    author.increment!(:posts_counter)
  end

  def rencent_comments
    post.order(created_at: :desc).limit(5)
  end
end
