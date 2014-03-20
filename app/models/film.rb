class Film < ActiveRecord::Base
  self.table_name = 'film'
  before_save :set_last_updated_at
  has_many :film_actors
  has_many :actors, :through => :film_actors

  def to_s
    [release_year, title.titleize].join(' ')
  end

  private

  def set_last_updated_at
    self.last_update = Time.now
  end
end
