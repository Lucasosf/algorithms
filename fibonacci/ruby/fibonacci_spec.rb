require_relative 'fibonacci'
require 'rspec'

RSpec.describe Fibonacci do
  subject(:fibonacci) { described_class }

  describe '.generate' do
    subject(:generate) { fibonacci.generate(numbers) }
    let(:numbers) { 10 }

    context 'when it is a serie of 10' do
      let(:serie_ten) { [0, 1, 1, 2, 3, 5, 8, 13, 21, 34] }

      it { is_expected.to eq(serie_ten) }
    end

    context 'when it is a serie of 20' do
      let(:numbers) { 20 }
      let(:serie_twenty) { [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597, 2584, 4181] }

      it { is_expected.to eq(serie_twenty) }
    end
  end
end
