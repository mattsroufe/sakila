class RemoveCountryIdFromCities < ActiveRecord::Migration
  def change
    remove_column :cities, :country_id
  end
end
