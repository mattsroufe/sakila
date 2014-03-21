class RenameFilmCategoryLastUpdateToUpdatedAt < ActiveRecord::Migration
  def change
    rename_column :film_category, :last_update, :updated_at
  end
end
