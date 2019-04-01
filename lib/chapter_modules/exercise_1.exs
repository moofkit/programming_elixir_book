defmodule Times do
  def double(num), do: num * 2

  def triple(num), do: num * 3

  def quadruple(num), do: double(double(num))
end

IO.puts(Times.triple(3) == 9)
IO.puts(Times.quadruple(4) == 16)
