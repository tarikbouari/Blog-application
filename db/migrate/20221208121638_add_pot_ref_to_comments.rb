class AddPotRefToComments < ActiveRecord::Migration[7.0]
  def changes
    add_reference :comments, :post, null: false, foreign_key: true
  end
end
