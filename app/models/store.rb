class Store < ActiveRecord::Base
  has_many :inventories
  has_many :films, :through => :inventories
end
