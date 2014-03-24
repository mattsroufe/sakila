class RemoveRentalRateAndRentalDurationFromFilms < ActiveRecord::Migration
  def change
    remove_column :films, :rental_rate
    remove_column :films, :rental_duration
  end
end
