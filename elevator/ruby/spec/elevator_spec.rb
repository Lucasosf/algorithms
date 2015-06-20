require 'spec_helper'

RSpec.describe Elevator do
  subject(:elevator) { described_class.new(weight_capacity: weight_capacity,
                                          current_floor: current_floor,
                                          current_weight: current_weight) }
  let(:weight_capacity) { 800 }
  let(:current_floor) { 0 }
  let(:current_weight) { 0 }

  describe '#add_person' do
    subject(:add_person) { elevator.add_person }

    context 'fail when the elevator is fully' do
      let(:current_weight) { 800 }

      it { is_expected.to be_falsy }
    end
  end

  describe '#full?' do
    subject(:full?) { elevator.full? }

    context 'the elevator is full' do
      let(:current_weight) { weight_capacity }

      it { is_expected.to be_truthy }
    end

    context 'the elevator is not full' do
      let(:current_weight) { 0 }

      it { is_expected.to be_falsy }
    end
  end
end
