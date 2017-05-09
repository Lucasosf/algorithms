defmodule HelloWorldTest do
  use ExUnit.Case

  test "says Hello World!" do
    assert HelloWorld.say == "Hello World!"
  end

  test "says Hello Lucas!" do
    assert HelloWorld.say('Lucas') == "Hello Lucas!"
  end
end
