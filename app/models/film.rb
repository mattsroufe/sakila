class Film < ActiveRecord::Base
  self.table_name = 'film'
  before_save :set_last_updated_at
  has_many :film_actors
  has_many :actors, :through => :film_actors
  has_one :film_category
  has_one :category, :through => :film_category

  def to_s
    [release_year, title.titleize].join(' ')
  end

  private

  def set_last_updated_at
    self.last_update = Time.now
  end
end
