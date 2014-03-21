class RenameCustomersCustomerIdToId < ActiveRecord::Migration
  def change
    rename_column :customers, :customer_id, :id
    rename_column :customers, :last_update, :updated_at
    rename_column :customers, :create_date, :created_at
  end
end
