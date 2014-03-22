class Customer < ActiveRecord::Base
  has_many :rentals
  belongs_to :address
  scope :filter_by_last_name, ->(letter) { where("last_name LIKE ?", "#{letter}%") }

  def full_name
    [first_name, last_name].join(' ').titleize
  end
end
