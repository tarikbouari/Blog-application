class CreateLikes < ActiveRecord::Migration[7.0]
  def changes
    create_table :likes do |t|
      
      t.timestamps
    end
  end
end
