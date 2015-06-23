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
    @elevators = elevators
  end

  def delivery_people
  end

  def set_initial_position
    stairs = 3
    elevator_workspace = (floors - stairs) / 2
    start_point = floors - stairs

    elevators << Elevator.new(current_floor: start_point)
    elevators << Elevator.new(current_floor: start_point)

    elevators << Elevator.new(current_floor: start_point + elevator_workspace)
    elevators << Elevator.new(current_floor: start_point + elevator_workspace)
  end


end
