class RenameCitiesColumns < ActiveRecord::Migration
  def change
    rename_column :cities, :city_id, :id
    rename_column :cities, :last_update, :updated_at
  end
end
