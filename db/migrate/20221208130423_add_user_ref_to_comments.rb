class AddUserRefToComments < ActiveRecord::Migration[7.0]
  def changes
    add_reference :comments, :user, null: false, foreign_key: true
  end
end
