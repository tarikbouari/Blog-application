class AddUserRefToLikes < ActiveRecord::Migration[7.0]
  def changes
    add_reference :likes, :user, null: false, foreign_key: true
  end
end
