class Store < ActiveRecord::Base
  has_many :inventories

  def films_in_inventory
    inventories.map(&:film)
  end

  def rentals
    inventories.map(&:rental)
  end
end
