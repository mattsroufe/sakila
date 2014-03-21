class RenameFilmsColumns < ActiveRecord::Migration
  def change
    rename_column :films, :film_id, :id
    rename_column :films, :last_update, :updated_at
  end
end
