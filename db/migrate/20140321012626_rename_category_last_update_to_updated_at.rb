class RenameCategoryLastUpdateToUpdatedAt < ActiveRecord::Migration
  def change
    rename_column :category, :last_update, :updated_at
  end
end
