defmodule FibonacciTest do
  use ExUnit.Case

  test "generate" do
    assert Fibonacci.generate() == [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]
  end

  test "generate just five" do
    assert Fibonacci.generate(5) == [0, 1, 1, 2, 3]
  end

  test "generate just two" do
    assert Fibonacci.generate(2) == [0, 1]
  end
end
