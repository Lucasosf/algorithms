defmodule Fibonacci do
  # TODO: consider think again about this algo
  def generate(number \\ 10) do
    number = number - 2
    serie = next(0, 1, number, [0, 1])
    serie
  end

  def next(a, b, number, serie) do
    if number <= 0 do
      serie
    else
      n = a + b
      number = number - 1
      serie = serie ++ [n]
      next(b, n, number, serie)
    end
  end
end
