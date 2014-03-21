class RenameCountriesColumns < ActiveRecord::Migration
  def change
    rename_column :countries, :country_id, :id
    rename_column :countries, :last_update, :updated_at
  end
end
