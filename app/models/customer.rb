class Customer < ActiveRecord::Base
  include LastNameFilter
  has_many :rentals
  has_many :payments
  belongs_to :address

  def full_name
    [first_name, last_name].join(' ').titleize
  end
end
