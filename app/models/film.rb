class Film < ActiveRecord::Base
  has_many :film_actors
  has_many :actors, :through => :film_actors
  has_one :inventory
  has_one :film_category
  has_one :category, :through => :film_category

  def to_s
    title.titleize
  end
end
