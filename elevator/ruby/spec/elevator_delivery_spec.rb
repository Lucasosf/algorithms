require 'spec_helper'

RSpec.describe ElevatorDelivery do
  subject(:delivery) { described_class.new(floors: floors,
                                          people_per_floor: people_per_floor,
                                          elevators_quantity: elevators_quantity,
                                          elevators: elevators) }
  let(:floors) { 14 }
  let(:elevators_quantity) { 4 }
  let(:people_per_floor) { 30 }
  let(:elevators) { [] }

  describe '#set_initial_position' do
    subject(:set_initial_position) { delivery.set_initial_position }

    context 'create instancies and' do

      it 'must to be four' do
        set_initial_position
        expect(delivery.elevators.size).to eq(4)
      end

      it 'all of them must to be elevators' do
        set_initial_position
        expect(
          delivery.elevators.map{|e| e.kind_of?(Elevator)}
        ).to eq([true, true, true, true])
      end
    end
  end
end
