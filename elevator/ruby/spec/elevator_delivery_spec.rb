require 'spec_helper'

RSpec.describe ElevatorDelivery do
  subject(:elevator) { described_class.new(floors: floors,
                                          people_per_floor: people_per_floor,
                                          elevators_quantity: elevators_quantity,
                                          elevators: elevators) }

  describe '#set_initial_position' do
    subject(:set_initial_position) { elevator.set_initial_position }

  end
end
