class Actor < ActiveRecord::Base
  self.table_name = 'actor'
  before_save :set_last_updated_at
  has_one :actor_info, :foreign_key => "actor_id"

  def full_name
    [first_name, last_name].join(" ").titleize
  end

  private

  def set_last_updated_at
    self.last_update = Time.now
  end
end
