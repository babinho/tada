class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title
      t.boolean :done
      t.integer :priority
      t.references :user

      t.timestamps
    end
    add_index :items, :user_id
  end
end
