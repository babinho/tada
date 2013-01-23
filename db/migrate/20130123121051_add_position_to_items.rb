class AddPositionToItems < ActiveRecord::Migration
  def change
    rename_column :items, :priority, :position
  end
end
