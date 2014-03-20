class FilmActor < ActiveRecord::Base
  self.table_name = 'film_actor'
  before_save :set_last_updated_at
  belongs_to :actor
  belongs_to :film

  private

  def set_last_updated_at
    self.last_update = Time.now
  end
end
