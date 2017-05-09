defmodule HelloWorld do
  def say(name \\ "World") do
    "Hello #{name}!"
  end
end
