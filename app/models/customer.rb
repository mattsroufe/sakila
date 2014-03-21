class Customer < ActiveRecord::Base
  has_many :rentals
  belongs_to :address

  def full_name
    [first_name, last_name].join(' ').titleize
  end
end
