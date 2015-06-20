class ElevatorDelivery

  attr_accessor :floors,
                :people_per_floor,
                :elevators_quantity,
                :elevators

  def initialize(floors: 14,
                 people_per_floor: 30,
                 elevators_quantity: 4,
                 elevators: [])
    @floors = floors
    @people_per_floor = people_per_floor
    @elevators_quantity = elevators_quantity
  end

  def delivery_people
  end

  def set_initial_position
  end


end
