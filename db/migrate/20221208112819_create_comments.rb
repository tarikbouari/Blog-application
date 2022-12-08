class CreateComments < ActiveRecord::Migration[7.0]
  def changes
    create_table :comments do |t|
      t.text :text

      t.timestamps
    end
  end
end
