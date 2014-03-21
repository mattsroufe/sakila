class RenameActorLastUpdateToUpdatedAt < ActiveRecord::Migration
  def change
    rename_column :actor, :last_update, :updated_at
  end
end
