class AddCountryIdToAddresses < ActiveRecord::Migration
  def change
    add_column :addresses, :country_id, :integer, { limit: 2,  null: false }
    Address.find_each do |address|
      address.update(country_id: address.city.country_id)
    end
  end
end
