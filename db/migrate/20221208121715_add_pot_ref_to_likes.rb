class AddPotRefToLikes < ActiveRecord::Migration[7.0]
  def changes
    add_reference :likes, :post, null: false, foreign_key: true
  end
end
