require 'spec_helper'

RSpec.describe HelloWorld do
  subject { described_class }

  context ".say" do

    it "returns Hello World" do
      expect(subject.say).to eq("Hello World!")
    end

    it "returns Hello Lucas" do
      expect(subject.say("Lucas")).to eq("Hello Lucas!")
    end

  end
end
