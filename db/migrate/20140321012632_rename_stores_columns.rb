class RenameStoresColumns < ActiveRecord::Migration
  def change
    rename_column :stores, :store_id, :id
    rename_column :stores, :last_update, :updated_at
  end
end
