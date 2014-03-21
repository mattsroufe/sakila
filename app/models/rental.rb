class Rental < ActiveRecord::Base
  belongs_to :customer
  delegate :full_name, :to => :customer, :prefix => true
  belongs_to :inventory
  has_one :film, :through => :inventory
  scope :unreturned, -> { where(:return_date => nil)}
end
