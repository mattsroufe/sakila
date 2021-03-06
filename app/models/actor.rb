class Actor < ActiveRecord::Base
  include Filterable
  has_many :film_actors
  has_many :films, :through => :film_actors

  def full_name
    [first_name, last_name].join(" ").titleize
  end
end
