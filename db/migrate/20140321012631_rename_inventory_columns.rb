class RenameInventoryColumns < ActiveRecord::Migration
  def change
    rename_column :inventories, :inventory_id, :id
    rename_column :inventories, :last_update, :updated_at
  end
end
