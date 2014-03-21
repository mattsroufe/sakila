class RenameRentalsRentalIdToId < ActiveRecord::Migration
  def change
    rename_column :rentals, :rental_id, :id
    rename_column :rentals, :last_update, :updated_at
  end
end
