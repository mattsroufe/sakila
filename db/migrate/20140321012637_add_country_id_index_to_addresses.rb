class AddCountryIdIndexToAddresses < ActiveRecord::Migration
  def change
    add_index :addresses, :country_id, { name: "idx_fk_country_id", using: :btree }
  end
end
