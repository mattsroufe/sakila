class RenameCategoriesColumns < ActiveRecord::Migration
  def change
    rename_column :categories, :category_id, :id
  end
end
