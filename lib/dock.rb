class Dock
  attr_reader :name,
              :max_rental_time,
              :rental_log
  def initialize(name, max_rental_time)
    @name = name
    @max_rental_time = max_rental_time
    @rental_log = {}
  end

  def rent(boat, renter)
    rental_log[boat] = renter
  end

  def charge(boat)
    charge_hash = {}
    charge_hash[:card_number] = rental_log[boat].credit_card_number
    if boat.hours_rented <= @max_rental_time
      charge_hash[:amount] = boat.price_per_hour * boat.hours_rented
      charge_hash
    else
      charge_hash[:amount] = boat.price_per_hour * @max_rental_time
      charge_hash
    end
  end

end
