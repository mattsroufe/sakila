class AddRateAndDurationToRentals < ActiveRecord::Migration
  def change
    add_column :rentals, :rate, :decimal, { precision: 4, scale: 2, default: 4.99,  null: false }
    add_column :rentals, :duration, :integer, { limit: 1, default: 3, null: false }

    Rental.find_each do |rental|
      rental.update(rate: rental.film.rental_rate, duration: rental.film.rental_duration)
    end
  end
end
