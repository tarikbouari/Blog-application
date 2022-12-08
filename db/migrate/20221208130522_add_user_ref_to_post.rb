class AddUserRefToPost < ActiveRecord::Migration[7.0]
  def changes
    add_reference :posts, :user, null: false, foreign_key: true
  end
end
