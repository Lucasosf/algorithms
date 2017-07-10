require_relative 'hello_world'
require 'rspec'

RSpec.describe HelloWorld do
  subject { described_class }

  context ".say" do
    it "hello world" do
      expect(subject.say).to eq('Hello World!')
    end

    it "hello Lucas" do
      expect(subject.say('Lucas')).to eq('Hello Lucas!')
    end
  end
end
