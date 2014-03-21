class Store < ActiveRecord::Base
  has_many :inventories
  has_many :film, :through => :inventories
end
