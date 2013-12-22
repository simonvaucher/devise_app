class CreateThings < ActiveRecord::Migration
  def change
    create_table :things do |t|
      t.string :title
      t.string :description
      t.references :user

      t.timestamps
    end
    add_index :things, :user_id
  end
end
