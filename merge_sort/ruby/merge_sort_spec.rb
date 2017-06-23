require_relative 'merge_sort'
require 'rspec'

RSpec.describe MergeSort do
  subject { described_class }

  context ".sort" do
    let(:list) { [50, 94, 3, 12, 70, 14, 16, 1] }
    let(:sorted_list) { [1, 3, 12, 14, 16, 50, 70, 94] }

    it "returns the sorted list" do
      expect(subject.sort(list)).to eq(sorted_list)
    end
  end
end
