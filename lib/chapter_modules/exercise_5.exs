defmodule GreatestCommondDivisor do
  def gcd(x, 0), do: x
  def gcd(x, y), do: gcd(y, rem(x, y))
end

IO.puts(GreatestCommondDivisor.gcd(4, 6) == 2)
IO.puts(GreatestCommondDivisor.gcd(11, 3) == 1)
IO.puts(GreatestCommondDivisor.gcd(15, 25) == 5)
