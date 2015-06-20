class Elevator

  PERSON_WEIGHT = 80

  attr_accessor :weight_capacity,
                :current_floor,
                :current_weight

  def initialize(weight_capacity: 800,
                 current_floor: 0,
                 current_weight: 0)
    @weight_capacity = weight_capacity
    @current_floor = current_floor
    @current_weight = current_weight
  end

  def add_person
    unless full?
      current_weight += PERSON_WEIGHT
      return true
    end
    false
  end

  def full?
    (current_weight + (PERSON_WEIGHT - 1 )) >= weight_capacity
  end

end
