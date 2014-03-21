class RenameAddressesColumns < ActiveRecord::Migration
  def change
    rename_column :addresses, :address_id, :id
    rename_column :addresses, :last_update, :updated_at
  end
end
