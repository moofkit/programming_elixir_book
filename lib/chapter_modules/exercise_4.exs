defmodule Sum do
  def sum(1), do: 1
  def sum(num), do: sum(num - 1) + num
end

IO.puts(Sum.sum(2) == 3)
IO.puts(Sum.sum(5) == 15)
