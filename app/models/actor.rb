class Actor < ActiveRecord::Base
  self.table_name = 'actor'
  before_save :set_last_updated_at

  private

  def set_last_updated_at
    self.last_update = Time.now
  end
end
