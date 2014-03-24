class RenamePaymentsColumns < ActiveRecord::Migration
  def change
    rename_column :payments, :payment_id, :id
    rename_column :payments, :last_update, :updated_at
  end
end
