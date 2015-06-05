class HelloWorld
  def self.say(name = nil)
    name = 'World' if name.nil?
    "Hello #{name}!"
  end
end
